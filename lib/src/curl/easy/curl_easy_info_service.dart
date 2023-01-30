import 'package:curl_http/curl.dart';

/// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
class CurlEasyInfoService {
  CurlEasyInfoService(this.easyHandle);

  final CurlEasy easyHandle;

  /// API docs: https://curl.se/libcurl/c/CURLINFO_EFFECTIVE_METHOD.html
  String? get effectiveMethod {
    return easyHandle.getInfoString(CurlEasyInfo.EFFECTIVE_METHOD);
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_EFFECTIVE_URL.html
  String? get effectiveUrl {
    return easyHandle.getInfoString(CurlEasyInfo.EFFECTIVE_URL);
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_RESPONSE_CODE.html
  int get responseCode {
    return easyHandle.getInfoInt(CurlEasyInfo.RESPONSE_CODE);
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_TOTAL_TIME_T.html
  Duration get totalTime {
    return Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.TOTAL_TIME_T));
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_SSL_ENGINES.html
  List<String>? get sslEngines {
    final slist = easyHandle.getInfoSlist(CurlEasyInfo.SSL_ENGINES);
    try {
      return slist?.toList(growable: false);
    } finally {
      slist?.close();
    }
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_COOKIELIST.html
  List<String>? get cookieList {
    final slist = easyHandle.getInfoSlist(CurlEasyInfo.COOKIELIST);
    try {
      return slist?.toList(growable: false);
    } finally {
      slist?.close();
    }
  }
}
