// ignore_for_file: constant_identifier_names

import 'package:curl_http/src/curl/bindings.g.dart';

// `static const int CURLPROXY_(\w+).*;`
// ->
// `$1(curl_proxytype.CURLPROXY_$1),\n`

/// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYTYPE.html
enum CurlProxyType {
  HTTP(curl_proxytype.CURLPROXY_HTTP),

  HTTP_1_0(curl_proxytype.CURLPROXY_HTTP_1_0),

  HTTPS(curl_proxytype.CURLPROXY_HTTPS),

  SOCKS4(curl_proxytype.CURLPROXY_SOCKS4),

  SOCKS5(curl_proxytype.CURLPROXY_SOCKS5),

  SOCKS4A(curl_proxytype.CURLPROXY_SOCKS4A),

  SOCKS5_HOSTNAME(curl_proxytype.CURLPROXY_SOCKS5_HOSTNAME),
  ;

  const CurlProxyType(this.rawValue);

  final int rawValue;
}
