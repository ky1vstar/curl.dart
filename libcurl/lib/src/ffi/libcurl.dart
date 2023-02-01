import 'package:libcurl/src/ffi/bindings.g.dart';
import 'package:libcurl/src/ffi/load_library.dart';

var _libcurlLoaded = false;

final libcurl = (() {
  final libcurl = Bindings(open.openCurl());
  _libcurlLoaded = true;
  return libcurl;
})();

bool get libcurlLoaded => _libcurlLoaded;
