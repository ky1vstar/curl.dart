import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/bindings.g.dart';
import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/libcurl.dart';

/// https://curl.se/libcurl/c/libcurl-multi.html
class CurlMulti extends CurlHandle<CURLM> {
  /// API docs: https://curl.se/libcurl/c/curl_multi_init.html
  factory CurlMulti() {
    final handle = libcurl.curl_multi_init();
    if (handle == nullptr) {
      throw const CurlException("`curl_multi_init` has returned a null pointer");
    }
    return CurlMulti._(handle);
  }

  CurlMulti._(super.handle)
      : super(
          cleanupFunc: (ptr) => _throwIfNotOkResult(libcurl.curl_multi_cleanup(ptr)),
          finalizerCallback: libcurl.addresses.curl_multi_cleanup.cast(),
        );

  /// API docs: https://curl.se/libcurl/c/curl_multi_cleanup.html
  @override
  void close() {
    super.close();
  }

  /// API docs: https://curl.se/libcurl/c/curl_multi_add_handle.html
  void addHandle(CurlEasy easyHandle) {
    final result = libcurl.curl_multi_add_handle(handle, easyHandle.handle);
    _throwIfNotOkResult(result);
  }

  /// API docs: https://curl.se/libcurl/c/curl_multi_remove_handle.html
  void removeHandle(CurlEasy easyHandle) {
    final result = libcurl.curl_multi_remove_handle(handle, easyHandle.handle);
    _throwIfNotOkResult(result);
  }

  /// API docs: https://curl.se/libcurl/c/curl_multi_perform.html
  int perform() {
    final runningHandlesPtr = malloc.allocate<Int>(sizeOf<Int>());
    try {
      final result = libcurl.curl_multi_perform(handle, runningHandlesPtr);
      _throwIfNotOkResult(result);
      return runningHandlesPtr.value;
    } finally {
      malloc.free(runningHandlesPtr);
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_multi_poll.html
  int poll(Duration timeout) {
    final numfdsPtr = malloc.allocate<Int>(sizeOf<Int>());
    try {
      final result = libcurl.curl_multi_poll(handle, nullptr, 0, timeout.inMilliseconds, numfdsPtr);
      _throwIfNotOkResult(result);
      return numfdsPtr.value;
    } finally {
      malloc.free(numfdsPtr);
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_multi_info_read.html
  CurlMsg? infoRead() {
    final dummyPtr = malloc.allocate<Int>(sizeOf<Int>());
    try {
      final msgPtr = libcurl.curl_multi_info_read(handle, dummyPtr);
      if (msgPtr == nullptr) {
        return null;
      } else if (msgPtr.ref.msg == CURLMSG.CURLMSG_DONE) {
        return CurlMsg.done(
          CurlStorableHandle.existingInstance(msgPtr.ref.easy_handle),
          CurlEasyCode.fromRawValue(msgPtr.ref.data.result),
        );
      } else {
        return CurlMsg.inProgress(CurlStorableHandle.existingInstance(msgPtr.ref.easy_handle));
      }
    } finally {
      malloc.free(dummyPtr);
    }
  }

  static void _throwIfNotOkResult(int result) {
    if (result != CURLMcode.CURLM_OK) {
      throw CurlMultiException(result);
    }
  }
}
