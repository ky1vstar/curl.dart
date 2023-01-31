import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/bindings.g.dart';
import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/easy/curl_header_internal.dart';
import 'package:libcurl/src/fixed_bindings.dart';
import 'package:libcurl/src/libcurl.dart';
import 'package:libcurl/src/utils.dart';

/// API docs: https://curl.se/libcurl/c/libcurl-easy.html
class CurlEasy extends CurlStorableHandle<CURL> {
  /// API docs: https://curl.se/libcurl/c/curl_easy_init.html
  factory CurlEasy() {
    final handle = libcurl.curl_easy_init();
    if (handle == nullptr) {
      throw const CurlException("`curl_easy_init` has returned a null pointer");
    }
    return CurlEasy._(handle);
  }

  CurlEasy._(super.handle)
      : super(
          cleanupFunc: libcurl.curl_easy_cleanup,
          finalizerCallback: libcurl.addresses.curl_easy_cleanup,
        );

  late final info = CurlEasyInfoService(this);
  late final options = CurlEasyOptionsService(this);

  /// API docs: https://curl.se/libcurl/c/curl_easy_cleanup.html
  @override
  void close() {
    super.close();
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_duphandle.html
  CurlEasy duplicate() {
    final dupHandle = libcurl.curl_easy_duphandle(handle);
    if (dupHandle == nullptr) {
      throw const CurlException("`curl_easy_duphandle` has returned a null pointer");
    }
    return CurlEasy._(dupHandle);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_perform.html
  void perform() {
    final result = libcurl.curl_easy_perform(handle);
    _throwIfNotOkResult(result);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_pause.html
  void pause({required bool receive, required bool send}) {
    var bitmask = CURLPAUSE_CONT;
    if (receive) bitmask |= CURLPAUSE_RECV;
    if (send) bitmask |= CURLPAUSE_SEND;
    final result = libcurl.curl_easy_pause(handle, bitmask);
    _throwIfNotOkResult(result);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_header.html
  CurlHeader header({
    required String name,
    required int index,
    required Iterable<CurlHeaderOrigin> origin,
    required int request,
  }) {
    final namePtr = name.toNativeUtf8();
    final hout = malloc<Pointer<curl_header>>();
    try {
      final result = libcurl.curl_easy_header(handle, namePtr.cast(), index, origin.toBitMask(), request, hout);
      if (result != CURLHcode.CURLHE_OK) {
        throw CurlHeaderException(CurlHeaderCode.fromRawValue(result));
      }
      assert(hout.value != nullptr);
      return curlHeaderToDart(hout.value);
    } finally {
      malloc.free(namePtr);
      malloc.free(hout);
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_nextheader.html
  Iterable<CurlHeader> headers({required Iterable<CurlHeaderOrigin> origin, required int request}) {
    return CurlHeaderIterable(easyHandle: this, origin: origin, request: request);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
  void setOptionString(CurlEasyOption option, String? parameter) {
    final parameterPtr = parameter?.toNativeUtf8();
    try {
      setOptionPointer(option, parameterPtr ?? nullptr);
    } finally {
      if (parameterPtr != null) {
        malloc.free(parameterPtr);
      }
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
  void setOptionSlist(CurlEasyOption option, CurlSlist? parameter) {
    setOptionPointer(option, parameter?.handle ?? nullptr);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
  void setOptionInt(CurlEasyOption option, int parameter) {
    _setOptionOrThrow(libcurl.curl_easy_setopt_int, option, parameter);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
  void setOptionOff(CurlEasyOption option, int parameter) {
    _setOptionOrThrow(libcurl.curl_easy_setopt_off, option, parameter);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
  // ignore: avoid_positional_boolean_parameters
  void setOptionBool(CurlEasyOption option, bool parameter) {
    setOptionInt(option, parameter ? 1 : 0);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
  void setOptionPointer<T extends NativeType>(CurlEasyOption option, Pointer<T> parameter) {
    _setOptionOrThrow(libcurl.curl_easy_setopt_ptr, option, parameter.cast<Void>());
  }

  void _setOptionOrThrow<T>(int Function(Pointer<CURL>, int, T) setter, CurlEasyOption option, T parameter) {
    final result = setter(handle, option.rawValue, parameter);
    _throwIfNotOkResult(result);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
  String? getInfoString(CurlEasyInfo info) {
    return getInfoPointer(info)?.cast<Utf8>().toDartString();
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
  CurlSlist? getInfoSlist(CurlEasyInfo info) {
    return getInfoPointer(info)?.cast<curl_slist>().let(CurlSlist.fromHandle);
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
  int getInfoInt(CurlEasyInfo info) {
    final intPtr = calloc.allocate<Int>(sizeOf<Int>());
    try {
      final result = libcurl.curl_easy_getinfo(handle, info.rawValue, intPtr.cast());
      _throwIfNotOkResult(result);
      return intPtr.value;
    } finally {
      calloc.free(intPtr);
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
  int getInfoOff(CurlEasyInfo info) {
    final intPtr = calloc.allocate<Int64>(sizeOf<Int64>());
    try {
      final result = libcurl.curl_easy_getinfo(handle, info.rawValue, intPtr.cast());
      _throwIfNotOkResult(result);
      return intPtr.value;
    } finally {
      calloc.free(intPtr);
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
  double getInfoDouble(CurlEasyInfo info) {
    final doublePtr = calloc.allocate<Double>(sizeOf<Double>());
    try {
      final result = libcurl.curl_easy_getinfo(handle, info.rawValue, doublePtr.cast());
      _throwIfNotOkResult(result);
      return doublePtr.value;
    } finally {
      calloc.free(doublePtr);
    }
  }

  /// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
  Pointer<Void>? getInfoPointer(CurlEasyInfo info) {
    final ptrPtr = calloc.allocate<Pointer<Void>>(sizeOf<Pointer<Void>>());
    try {
      final result = libcurl.curl_easy_getinfo(handle, info.rawValue, ptrPtr.cast());
      _throwIfNotOkResult(result);
      return ptrPtr.value.nullIfNullptr;
    } finally {
      calloc.free(ptrPtr);
    }
  }

  void _throwIfNotOkResult(int result) {
    if (result == CURLcode.CURLE_PROXY) {
      throw CurlProxyException(info.proxyError);
    } else {
      CurlEasyException.throwIfNotOkResult(result);
    }
  }
}
