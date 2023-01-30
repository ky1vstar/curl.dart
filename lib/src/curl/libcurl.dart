import 'dart:ffi';

import 'package:curl_http/src/curl/bindings.g.dart';

final libcurl = Bindings(DynamicLibrary.open("/usr/local/curl/lib/libcurl.dylib"));
