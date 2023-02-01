// ignore_for_file: constant_identifier_names

import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/ffi/bindings.g.dart';

// `static const int CURLPX_(\w+).*;`
// ->
// `$1(CURLproxycode.CURLPX_$1),\n`

/// API docs: https://curl.se/libcurl/c/CURLINFO_PROXY_ERROR.html
enum CurlProxyCode with CurlCode {
  OK(CURLproxycode.CURLPX_OK),

  BAD_ADDRESS_TYPE(CURLproxycode.CURLPX_BAD_ADDRESS_TYPE),

  BAD_VERSION(CURLproxycode.CURLPX_BAD_VERSION),

  CLOSED(CURLproxycode.CURLPX_CLOSED),

  GSSAPI(CURLproxycode.CURLPX_GSSAPI),

  GSSAPI_PERMSG(CURLproxycode.CURLPX_GSSAPI_PERMSG),

  GSSAPI_PROTECTION(CURLproxycode.CURLPX_GSSAPI_PROTECTION),

  IDENTD(CURLproxycode.CURLPX_IDENTD),

  IDENTD_DIFFER(CURLproxycode.CURLPX_IDENTD_DIFFER),

  LONG_HOSTNAME(CURLproxycode.CURLPX_LONG_HOSTNAME),

  LONG_PASSWD(CURLproxycode.CURLPX_LONG_PASSWD),

  LONG_USER(CURLproxycode.CURLPX_LONG_USER),

  NO_AUTH(CURLproxycode.CURLPX_NO_AUTH),

  RECV_ADDRESS(CURLproxycode.CURLPX_RECV_ADDRESS),

  RECV_AUTH(CURLproxycode.CURLPX_RECV_AUTH),

  RECV_CONNECT(CURLproxycode.CURLPX_RECV_CONNECT),

  RECV_REQACK(CURLproxycode.CURLPX_RECV_REQACK),

  REPLY_ADDRESS_TYPE_NOT_SUPPORTED(CURLproxycode.CURLPX_REPLY_ADDRESS_TYPE_NOT_SUPPORTED),

  REPLY_COMMAND_NOT_SUPPORTED(CURLproxycode.CURLPX_REPLY_COMMAND_NOT_SUPPORTED),

  REPLY_CONNECTION_REFUSED(CURLproxycode.CURLPX_REPLY_CONNECTION_REFUSED),

  REPLY_GENERAL_SERVER_FAILURE(CURLproxycode.CURLPX_REPLY_GENERAL_SERVER_FAILURE),

  REPLY_HOST_UNREACHABLE(CURLproxycode.CURLPX_REPLY_HOST_UNREACHABLE),

  REPLY_NETWORK_UNREACHABLE(CURLproxycode.CURLPX_REPLY_NETWORK_UNREACHABLE),

  REPLY_NOT_ALLOWED(CURLproxycode.CURLPX_REPLY_NOT_ALLOWED),

  REPLY_TTL_EXPIRED(CURLproxycode.CURLPX_REPLY_TTL_EXPIRED),

  REPLY_UNASSIGNED(CURLproxycode.CURLPX_REPLY_UNASSIGNED),

  REQUEST_FAILED(CURLproxycode.CURLPX_REQUEST_FAILED),

  RESOLVE_HOST(CURLproxycode.CURLPX_RESOLVE_HOST),

  SEND_AUTH(CURLproxycode.CURLPX_SEND_AUTH),

  SEND_CONNECT(CURLproxycode.CURLPX_SEND_CONNECT),

  SEND_REQUEST(CURLproxycode.CURLPX_SEND_REQUEST),

  UNKNOWN_FAIL(CURLproxycode.CURLPX_UNKNOWN_FAIL),

  UNKNOWN_MODE(CURLproxycode.CURLPX_UNKNOWN_MODE),

  USER_REJECTED(CURLproxycode.CURLPX_USER_REJECTED),

  LAST(CURLproxycode.CURLPX_LAST),
  ;

  const CurlProxyCode(this.rawValue);

  factory CurlProxyCode.fromRawValue(int rawValue) {
    return CurlProxyCode.values.firstWhere(
      (element) => element.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue was given to $CurlProxyCode");
        return CurlProxyCode.LAST;
      },
    );
  }

  @override
  final int rawValue;

  static void throwIfNotOkResult(int result) {
    if (result != CURLproxycode.CURLPX_OK) {
      throw CurlCodeException(CurlProxyCode.fromRawValue(result));
    }
  }

  @override
  String? strError() => CurlEasyCode.PROXY.strError();
}
