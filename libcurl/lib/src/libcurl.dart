import 'dart:ffi';

import 'package:libcurl/src/bindings.g.dart';

// final libcurl = Bindings(DynamicLibrary.open("/usr/local/curl/lib/libcurl.dylib"));
final libcurl = Bindings(DynamicLibrary.open("/usr/lib/libcurl.dylib"));
