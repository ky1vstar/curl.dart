// ignore_for_file: constant_identifier_names

import 'package:libcurl/src/bindings.g.dart';

// `const int CURLHEADER_(\w+).*;`
// ->
// `$1(CURLHEADER_$1),\n`

/// API docs: https://curl.se/libcurl/c/CURLOPT_HEADEROPT.html
enum CurlHeaderBehaviour {
  UNIFIED(CURLHEADER_UNIFIED),

  SEPARATE(CURLHEADER_SEPARATE),
  ;

  const CurlHeaderBehaviour(this.rawValue);

  final int rawValue;
}
