import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:libcurl/src/bindings.g.dart';
import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/exceptions.dart';
import 'package:libcurl/src/libcurl.dart';

class CurlSlist extends CurlHotSwappableHandle<curl_slist> with IterableMixin<String> {
  /// API docs: https://curl.se/libcurl/c/curl_slist_append.html
  factory CurlSlist() => CurlSlist.fromHandle(nullptr);

  factory CurlSlist.from(Iterable<String> elements) {
    final list = CurlSlist();
    try {
      list.addAll(elements);
      return list;
    } on Object catch (_) {
      list.close();
      rethrow;
    }
  }

  CurlSlist.fromHandle(super.handle)
      : super(
          finalizerCallback: libcurl.addresses.curl_slist_free_all.cast(),
          cleanupFunc: libcurl.curl_slist_free_all,
        );

  @override
  Iterator<String> get iterator => _CurlSlistIterator(handle);

  /// API docs: https://curl.se/libcurl/c/curl_slist_free_all.html
  @override
  void close() {
    super.close();
  }

  /// API docs: https://curl.se/libcurl/c/curl_slist_append.html
  void add(String value) {
    final Pointer valuePtr = value.toNativeUtf8();
    try {
      final newHandle = libcurl.curl_slist_append(handle, valuePtr.cast());
      if (newHandle == nullptr) {
        throw const CurlException("`curl_slist_append` has returned a null pointer");
      }
      howSwapHandle(newHandle);
    } finally {
      malloc.free(valuePtr);
    }
  }

  void addAll(Iterable<String> iterable) {
    for (final value in iterable) {
      add(value);
    }
  }
}

class _CurlSlistIterator extends Iterator<String> {
  _CurlSlistIterator(this._handle);

  final Pointer<curl_slist> _handle;
  Pointer<curl_slist> _currentHandle = nullptr;

  @override
  String get current => _currentHandle.ref.data.cast<Utf8>().toDartString();

  @override
  bool moveNext() {
    if (_currentHandle == nullptr) {
      _currentHandle = _handle;
    } else {
      _currentHandle = _currentHandle.ref.next;
    }
    return _currentHandle != nullptr;
  }
}
