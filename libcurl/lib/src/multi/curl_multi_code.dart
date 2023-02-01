// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/ffi/bindings.g.dart';
import 'package:libcurl/src/ffi/libcurl.dart';

// `static const int CURLM_(\w+).*;`
// ->
// `$1(CURLMcode.CURLM_$1),\n`

/// API docs: https://curl.se/libcurl/c/libcurl-errors.html#CURLMcode
enum CurlMultiCode with CurlCode {
  CALL_MULTI_PERFORM(CURLMcode.CURLM_CALL_MULTI_PERFORM),

  OK(CURLMcode.CURLM_OK),

  BAD_HANDLE(CURLMcode.CURLM_BAD_HANDLE),

  BAD_EASY_HANDLE(CURLMcode.CURLM_BAD_EASY_HANDLE),

  OUT_OF_MEMORY(CURLMcode.CURLM_OUT_OF_MEMORY),

  INTERNAL_ERROR(CURLMcode.CURLM_INTERNAL_ERROR),

  BAD_SOCKET(CURLMcode.CURLM_BAD_SOCKET),

  UNKNOWN_OPTION(CURLMcode.CURLM_UNKNOWN_OPTION),

  ADDED_ALREADY(CURLMcode.CURLM_ADDED_ALREADY),

  RECURSIVE_API_CALL(CURLMcode.CURLM_RECURSIVE_API_CALL),

  WAKEUP_FAILURE(CURLMcode.CURLM_WAKEUP_FAILURE),

  BAD_FUNCTION_ARGUMENT(CURLMcode.CURLM_BAD_FUNCTION_ARGUMENT),

  ABORTED_BY_CALLBACK(CURLMcode.CURLM_ABORTED_BY_CALLBACK),

  UNRECOVERABLE_POLL(CURLMcode.CURLM_UNRECOVERABLE_POLL),

  LAST(CURLMcode.CURLM_LAST),
  ;

  const CurlMultiCode(this.rawValue);

  factory CurlMultiCode.fromRawValue(int rawValue) {
    return CurlMultiCode.values.firstWhere(
      (element) => element.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue was given to $CurlMultiCode");
        return CurlMultiCode.LAST;
      },
    );
  }

  @override
  final int rawValue;

  static void throwIfNotOkResult(int result) {
    if (result != CURLMcode.CURLM_OK) {
      throw CurlCodeException(CurlMultiCode.fromRawValue(result));
    }
  }

  @override
  String? strError() {
    switch (this) {
      case CurlMultiCode.LAST:
        return "Unknown error code";
      default:
        final errorStrPtr = libcurl.curl_multi_strerror(rawValue);
        return errorStrPtr == nullptr ? null : errorStrPtr.cast<Utf8>().toDartString();
    }
  }
}
