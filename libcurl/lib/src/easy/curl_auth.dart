// ignore_for_file: constant_identifier_names

import 'package:libcurl/src/ffi/bindings.g.dart';

// `const int CURLAUTH_(\w+).*;`
// ->
// `$1(CURLAUTH_$1),\n`

/// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPAUTH.html
enum CurlAuth {
  NONE(CURLAUTH_NONE),

  BASIC(CURLAUTH_BASIC),

  DIGEST(CURLAUTH_DIGEST),

  NEGOTIATE(CURLAUTH_NEGOTIATE),

  GSSNEGOTIATE(CURLAUTH_GSSNEGOTIATE),

  GSSAPI(CURLAUTH_GSSAPI),

  NTLM(CURLAUTH_NTLM),

  DIGEST_IE(CURLAUTH_DIGEST_IE),

  NTLM_WB(CURLAUTH_NTLM_WB),

  BEARER(CURLAUTH_BEARER),

  AWS_SIGV4(CURLAUTH_AWS_SIGV4),

  ONLY(CURLAUTH_ONLY),

  ANY(CURLAUTH_ANY),

  ANYSAFE(CURLAUTH_ANYSAFE),
  ;

  const CurlAuth(this.rawValue);

  final int rawValue;
}

extension CurlAuthIterable on Iterable<CurlAuth> {
  int toBitMask() => fold(0, (value, element) => value | element.rawValue);
}
