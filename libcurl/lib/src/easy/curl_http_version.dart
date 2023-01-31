// ignore_for_file: constant_identifier_names

import 'package:libcurl/src/bindings.g.dart';

// `const int CURL_HTTP_VERSION_(\w+).*;`
// ->
// `$1(CURL_HTTP_VERSION_$1),\n`

/// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP_VERSION.html
enum CurlHttpVersion {
  NONE(CURL_HTTP_VERSION_NONE),

  v1_0(CURL_HTTP_VERSION_1_0),

  v1_1(CURL_HTTP_VERSION_1_1),

  v2_0(CURL_HTTP_VERSION_2_0),

  v2TLS(CURL_HTTP_VERSION_2TLS),

  v2_PRIOR_KNOWLEDGE(CURL_HTTP_VERSION_2_PRIOR_KNOWLEDGE),

  v3(CURL_HTTP_VERSION_3),
  ;

  const CurlHttpVersion(this.rawValue);

  factory CurlHttpVersion.fromRawValue(int rawValue) {
    return CurlHttpVersion.values.firstWhere(
      (element) => element.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue was given to $CurlHttpVersion");
        return CurlHttpVersion.NONE;
      },
    );
  }

  final int rawValue;
}
