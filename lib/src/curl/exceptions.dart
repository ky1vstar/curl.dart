import 'dart:ffi';

import 'package:curl_http/src/curl/easy/curl_easy_code.dart';
import 'package:curl_http/src/curl/libcurl.dart';
import 'package:ffi/ffi.dart';

class CurlException implements Exception {
  const factory CurlException(String message) = CurlGenericException;
}

class CurlGenericException implements CurlException {
  const CurlGenericException(this.message);

  final String message;

  @override
  String toString() {
    return "CurlGenericException: $message";
  }
}

class CurlEasyException implements CurlException {
  const CurlEasyException(this.code);

  final CurlEasyCode code;

  @override
  String toString() {
    return "CurlEasyException($code): ${code.strError()}";
  }
}

class CurlMultiException implements CurlException {
  const CurlMultiException(this.code);

  final int code;

  @override
  String toString() {
    final errorStrPtr = libcurl.curl_multi_strerror(code);
    final errorStr = errorStrPtr == nullptr ? null : errorStrPtr.cast<Utf8>().toDartString();
    return "CurlMultiException($code): $errorStr";
  }
}
