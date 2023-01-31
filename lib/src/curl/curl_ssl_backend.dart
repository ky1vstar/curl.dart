// ignore_for_file: constant_identifier_names

import 'package:curl_http/src/curl/bindings.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl_ssl_backend.freezed.dart';

/// API docs: https://curl.se/libcurl/c/curl_global_sslset.html#SYNOPSIS
@freezed
class CurlSslBackend with _$CurlSslBackend {
  const factory CurlSslBackend({
    required CurlSslBackendId id,
    required String name,
  }) = _CurlSslBackend;
}

// `static const int CURLSSLBACKEND_(\w+).*;`
// ->
// `$1(curl_sslbackend.CURLSSLBACKEND_$1),\n`

/// API docs: https://curl.se/libcurl/c/curl_global_sslset.html#SYNOPSIS
enum CurlSslBackendId {
  NONE(curl_sslbackend.CURLSSLBACKEND_NONE),

  OPENSSL(curl_sslbackend.CURLSSLBACKEND_OPENSSL),

  GNUTLS(curl_sslbackend.CURLSSLBACKEND_GNUTLS),

  NSS(curl_sslbackend.CURLSSLBACKEND_NSS),

  OBSOLETE4(curl_sslbackend.CURLSSLBACKEND_OBSOLETE4),

  GSKIT(curl_sslbackend.CURLSSLBACKEND_GSKIT),

  POLARSSL(curl_sslbackend.CURLSSLBACKEND_POLARSSL),

  WOLFSSL(curl_sslbackend.CURLSSLBACKEND_WOLFSSL),

  SCHANNEL(curl_sslbackend.CURLSSLBACKEND_SCHANNEL),

  SECURETRANSPORT(curl_sslbackend.CURLSSLBACKEND_SECURETRANSPORT),

  AXTLS(curl_sslbackend.CURLSSLBACKEND_AXTLS),

  MBEDTLS(curl_sslbackend.CURLSSLBACKEND_MBEDTLS),

  MESALINK(curl_sslbackend.CURLSSLBACKEND_MESALINK),

  BEARSSL(curl_sslbackend.CURLSSLBACKEND_BEARSSL),

  RUSTLS(curl_sslbackend.CURLSSLBACKEND_RUSTLS),
  ;

  const CurlSslBackendId(this.rawValue);

  factory CurlSslBackendId.fromRawValue(int rawValue) {
    return CurlSslBackendId.values.firstWhere(
      (element) => element.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue was given to $CurlSslBackendId");
        return CurlSslBackendId.NONE;
      },
    );
  }

  final int rawValue;
}
