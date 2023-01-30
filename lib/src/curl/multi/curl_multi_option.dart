// ignore_for_file: constant_identifier_names

import 'package:curl_http/src/curl/bindings.g.dart';
import 'package:curl_http/src/curl/curl_base.dart';

// `static const int CURLMOPT_(\w+).*;`
// ->
// `/// API docs: https://curl.se/libcurl/c/CURLMOPT_$1.html\n  static const $1 = CurlMultiOption._(CURLMoption.CURLMOPT_$1);\n`

/// API docs: https://curl.se/libcurl/c/curl_multi_setopt.html
class CurlMultiOption extends CurlOption {
  /// API docs: https://curl.se/libcurl/c/CURLMOPT_SOCKETFUNCTION.html
  static const SOCKETFUNCTION = CurlMultiOption._(CURLMoption.CURLMOPT_SOCKETFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_SOCKETDATA.html
  static const SOCKETDATA = CurlMultiOption._(CURLMoption.CURLMOPT_SOCKETDATA);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_PIPELINING.html
  static const PIPELINING = CurlMultiOption._(CURLMoption.CURLMOPT_PIPELINING);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_TIMERFUNCTION.html
  static const TIMERFUNCTION = CurlMultiOption._(CURLMoption.CURLMOPT_TIMERFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_TIMERDATA.html
  static const TIMERDATA = CurlMultiOption._(CURLMoption.CURLMOPT_TIMERDATA);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_MAXCONNECTS.html
  static const MAXCONNECTS = CurlMultiOption._(CURLMoption.CURLMOPT_MAXCONNECTS);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_MAX_HOST_CONNECTIONS.html
  static const MAX_HOST_CONNECTIONS = CurlMultiOption._(CURLMoption.CURLMOPT_MAX_HOST_CONNECTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_MAX_PIPELINE_LENGTH.html
  static const MAX_PIPELINE_LENGTH = CurlMultiOption._(CURLMoption.CURLMOPT_MAX_PIPELINE_LENGTH);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE.html
  static const CONTENT_LENGTH_PENALTY_SIZE = CurlMultiOption._(CURLMoption.CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE.html
  static const CHUNK_LENGTH_PENALTY_SIZE = CurlMultiOption._(CURLMoption.CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_PIPELINING_SITE_BL.html
  static const PIPELINING_SITE_BL = CurlMultiOption._(CURLMoption.CURLMOPT_PIPELINING_SITE_BL);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_PIPELINING_SERVER_BL.html
  static const PIPELINING_SERVER_BL = CurlMultiOption._(CURLMoption.CURLMOPT_PIPELINING_SERVER_BL);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_MAX_TOTAL_CONNECTIONS.html
  static const MAX_TOTAL_CONNECTIONS = CurlMultiOption._(CURLMoption.CURLMOPT_MAX_TOTAL_CONNECTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_PUSHFUNCTION.html
  static const PUSHFUNCTION = CurlMultiOption._(CURLMoption.CURLMOPT_PUSHFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_PUSHDATA.html
  static const PUSHDATA = CurlMultiOption._(CURLMoption.CURLMOPT_PUSHDATA);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_MAX_CONCURRENT_STREAMS.html
  static const MAX_CONCURRENT_STREAMS = CurlMultiOption._(CURLMoption.CURLMOPT_MAX_CONCURRENT_STREAMS);

  /// API docs: https://curl.se/libcurl/c/CURLMOPT_LASTENTRY.html
  static const LASTENTRY = CurlMultiOption._(CURLMoption.CURLMOPT_LASTENTRY);

  const CurlMultiOption.fromRawValue(this.rawValue);

  const CurlMultiOption._(this.rawValue);

  @override
  final int rawValue;
}
