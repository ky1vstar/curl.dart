import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/utils.dart';

/// API docs: https://curl.se/libcurl/c/curl_easy_getinfo.html
class CurlEasyInfoService {
  CurlEasyInfoService(this.easyHandle);

  final CurlEasy easyHandle;

  /// API docs: https://curl.se/libcurl/c/CURLINFO_EFFECTIVE_METHOD.html
  String? get effectiveMethod => easyHandle.getInfoString(CurlEasyInfo.EFFECTIVE_METHOD);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_EFFECTIVE_URL.html
  String? get effectiveUrl => easyHandle.getInfoString(CurlEasyInfo.EFFECTIVE_URL);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_RESPONSE_CODE.html
  int get responseCode => easyHandle.getInfoInt(CurlEasyInfo.RESPONSE_CODE);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_REFERER.html
  String? get referer => easyHandle.getInfoString(CurlEasyInfo.REFERER);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_HTTP_CONNECTCODE.html
  int get httpConnectCode => easyHandle.getInfoInt(CurlEasyInfo.HTTP_CONNECTCODE);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_HTTP_VERSION.html
  CurlHttpVersion get httpVersion => CurlHttpVersion.fromRawValue(easyHandle.getInfoInt(CurlEasyInfo.HTTP_VERSION));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_FILETIME_T.html
  DateTime? get fileTime {
    final value = easyHandle.getInfoOff(CurlEasyInfo.FILETIME_T);
    return value < 0 ? null : DateTime.fromMillisecondsSinceEpoch(value * 1000);
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_TOTAL_TIME_T.html
  Duration get totalTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.TOTAL_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_NAMELOOKUP_TIME_T.html
  Duration get nameLookupTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.NAMELOOKUP_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_CONNECT_TIME_T.html
  Duration get connectTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.CONNECT_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_APPCONNECT_TIME_T.html
  Duration get appConnectTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.APPCONNECT_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_PRETRANSFER_TIME_T.html
  Duration get preTransferTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.PRETRANSFER_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_STARTTRANSFER_TIME_T.html
  Duration get startTransferTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.STARTTRANSFER_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_REDIRECT_TIME_T.html
  Duration get redirectTime => Duration(microseconds: easyHandle.getInfoOff(CurlEasyInfo.REDIRECT_TIME_T));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_REDIRECT_COUNT.html
  int get redirectCount => easyHandle.getInfoInt(CurlEasyInfo.REDIRECT_COUNT);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_REDIRECT_URL.html
  String? get redirectUrl => easyHandle.getInfoString(CurlEasyInfo.REDIRECT_URL);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_PROXY_ERROR.html
  CurlProxyCode get proxyError => CurlProxyCode.fromRawValue(easyHandle.getInfoInt(CurlEasyInfo.PROXY_ERROR));

  /// API docs: https://curl.se/libcurl/c/CURLINFO_SSL_ENGINES.html
  List<String>? get sslEngines {
    final slist = easyHandle.getInfoSlist(CurlEasyInfo.SSL_ENGINES);
    try {
      return slist?.toList(growable: false);
    } finally {
      slist?.close();
    }
  }

  /// API docs: https://curl.se/libcurl/c/CURLINFO_CONTENT_LENGTH_DOWNLOAD_T.html
  int? get contentLengthDownload =>
      easyHandle.getInfoOff(CurlEasyInfo.CONTENT_LENGTH_DOWNLOAD_T).let((it) => it < 0 ? null : it);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_CONTENT_LENGTH_UPLOAD_T.html
  int? get contentLengthUpload =>
      easyHandle.getInfoOff(CurlEasyInfo.CONTENT_LENGTH_UPLOAD_T).let((it) => it < 0 ? null : it);

  /// API docs: https://curl.se/libcurl/c/CURLINFO_CONTENT_TYPE.html
  String? get contentType => easyHandle.getInfoString(CurlEasyInfo.CONTENT_TYPE);

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
