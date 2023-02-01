import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/ffi/bindings.g.dart';
import 'package:libcurl/src/ffi/libcurl.dart';

class CurlHeaderIterable with IterableMixin<CurlHeader> {
  CurlHeaderIterable({required this.easyHandle, required this.origin, required this.request});

  final CurlEasy easyHandle;
  final Iterable<CurlHeaderOrigin> origin;
  final int request;

  @override
  Iterator<CurlHeader> get iterator => _CurlHeaderIterator(easyHandle, origin.toBitMask(), request);
}

class _CurlHeaderIterator extends Iterator<CurlHeader> {
  _CurlHeaderIterator(this.easyHandle, this.origin, this.request);

  final CurlEasy easyHandle;
  final int origin;
  final int request;

  Pointer<curl_header> _currentPointer = nullptr;
  CurlHeader? _currentValue;

  @override
  CurlHeader get current => _currentValue ??= curlHeaderToDart(_currentPointer);

  @override
  bool moveNext() {
    _currentValue = null;
    _currentPointer = libcurl.curl_easy_nextheader(easyHandle.handle, origin, request, _currentPointer);
    return _currentPointer != nullptr;
  }
}

CurlHeader curlHeaderToDart(Pointer<curl_header> pointer) {
  final value = pointer.ref;
  return CurlHeader(
    name: value.name.cast<Utf8>().toDartString(),
    value: value.value.cast<Utf8>().toDartString(),
    amount: value.amount,
    index: value.index,
    origin: CurlHeaderOrigin.fromRawValue(value.origin),
  );
}
