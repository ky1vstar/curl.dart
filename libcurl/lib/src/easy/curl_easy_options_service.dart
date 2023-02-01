// ignore_for_file: avoid_setters_without_getters

import 'dart:ffi';

import 'package:libcurl/libcurl.dart';
import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/ffi/bindings.g.dart';
import 'package:libcurl/src/utils.dart';

/// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
class CurlEasyOptionsService {
  CurlEasyOptionsService(this.easyHandle);

  final CurlEasy easyHandle;

  CurlReadFunc? _readFunc;
  CurlWriteFunc? _writeFunc;
  CurlHeaderFunc? _headerFunc;
  CurlSeekFunc? _seekFunc;

  void _setOptionStrings(CurlEasyOption option, Iterable<String>? parameter) {
    final slist = parameter == null ? null : CurlSlist.from(parameter);
    // TODO: manage slist lifecycle
    easyHandle.setOptionSlist(option, slist);
  }

  Iterable<String>? _mapHeaders(Map<String, String?>? headers) {
    return headers?.entries.map((entry) {
      final key = entry.key;
      final value = entry.value;
      if (value == null) {
        return "$key:";
      } else if (value.isEmpty) {
        return "$key;";
      } else {
        return "$key: $value";
      }
    });
  }

  //region Behavior options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_VERBOSE.html
  set verbose(bool verbose) => easyHandle.setOptionBool(CurlEasyOption.VERBOSE, verbose);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HEADER.html
  set header(bool header) => easyHandle.setOptionBool(CurlEasyOption.HEADER, header);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOPROGRESS.html
  set noProgress(bool noProgress) => easyHandle.setOptionBool(CurlEasyOption.NOPROGRESS, noProgress);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOSIGNAL.html
  set noSignal(bool noSignal) => easyHandle.setOptionBool(CurlEasyOption.NOSIGNAL, noSignal);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_WILDCARDMATCH.html
  set wildcardMatch(bool wildcardMatch) => easyHandle.setOptionBool(CurlEasyOption.WILDCARDMATCH, wildcardMatch);
  //endregion

  //region Callback options
  /// API docs:
  ///  - https://curl.se/libcurl/c/CURLOPT_WRITEFUNCTION.html
  ///  - https://curl.se/libcurl/c/CURLOPT_WRITEDATA.html
  set writeFunction(CurlWriteFunc? writeFunc) {
    if (writeFunc == null) {
      easyHandle.setOptionPointer(CurlEasyOption.WRITEFUNCTION, nullptr);
      easyHandle.setOptionPointer(CurlEasyOption.WRITEDATA, nullptr);
      _writeFunc = null;
    } else {
      easyHandle.setOptionPointer(CurlEasyOption.WRITEFUNCTION, _writeCallbackPtr);
      easyHandle.setOptionPointer(CurlEasyOption.WRITEDATA, easyHandle.handle);
      _writeFunc = writeFunc;
    }
  }

  /// API docs:
  ///  - https://curl.se/libcurl/c/CURLOPT_READFUNCTION.html
  ///  - https://curl.se/libcurl/c/CURLOPT_READDATA.html
  set readFunction(CurlReadFunc? readFunc) {
    if (readFunc == null) {
      easyHandle.setOptionPointer(CurlEasyOption.READFUNCTION, nullptr);
      easyHandle.setOptionPointer(CurlEasyOption.READDATA, nullptr);
      _readFunc = null;
    } else {
      easyHandle.setOptionPointer(CurlEasyOption.READFUNCTION, _readCallbackPtr);
      easyHandle.setOptionPointer(CurlEasyOption.READDATA, easyHandle.handle);
      _readFunc = readFunc;
    }
  }

  /// API docs:
  ///  - https://curl.se/libcurl/c/CURLOPT_SEEKFUNCTION.html
  ///  - https://curl.se/libcurl/c/CURLOPT_SEEKDATA.html
  set seekFunction(CurlSeekFunc? seekFunc) {
    easyHandle.setOptionPointer(CurlEasyOption.SEEKFUNCTION, seekFunc == null ? nullptr : _seekCallbackPtr);
    easyHandle.setOptionPointer(CurlEasyOption.SEEKDATA, seekFunc == null ? nullptr : easyHandle.handle);
    _seekFunc = seekFunc;
  }

  /// API docs:
  ///  - https://curl.se/libcurl/c/CURLOPT_HEADERFUNCTION.html
  ///  - https://curl.se/libcurl/c/CURLOPT_HEADERDATA.html
  set headerFunction(CurlHeaderFunc? headerFunc) {
    easyHandle.setOptionPointer(CurlEasyOption.HEADERFUNCTION, headerFunc == null ? nullptr : _headerCallbackPtr);
    easyHandle.setOptionPointer(CurlEasyOption.HEADERDATA, headerFunc == null ? nullptr : easyHandle.handle);
    _headerFunc = headerFunc;
  }
  //endregion

  //region Error options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_ERRORBUFFER.html
  set errorBuffer(CurlErrorBuffer errorBuffer) =>
      easyHandle.setOptionPointer(CurlEasyOption.ERRORBUFFER, errorBuffer.handle);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FAILONERROR.html
  set failOnError(bool failOnError) => easyHandle.setOptionBool(CurlEasyOption.FAILONERROR, failOnError);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_KEEP_SENDING_ON_ERROR.html
  set keepSendingOnError(bool keepSendingOnError) =>
      easyHandle.setOptionBool(CurlEasyOption.KEEP_SENDING_ON_ERROR, keepSendingOnError);
  //endregion

  //region Network options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_URL.html
  set url(String url) => easyHandle.setOptionString(CurlEasyOption.URL, url);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PATH_AS_IS.html
  set pathAsIs(bool pathAsIs) => easyHandle.setOptionBool(CurlEasyOption.PATH_AS_IS, pathAsIs);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROTOCOLS_STR.html
  set protocols(Iterable<String> protocols) =>
      easyHandle.setOptionString(CurlEasyOption.PROTOCOLS_STR, protocols.join(","));

  /// API docs: https://curl.se/libcurl/c/CURLOPT_REDIR_PROTOCOLS_STR.html
  set redirectProtocols(Iterable<String> redirectProtocols) =>
      easyHandle.setOptionString(CurlEasyOption.REDIR_PROTOCOLS_STR, redirectProtocols.join(","));

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DEFAULT_PROTOCOL.html
  set defaultProtocol(String? defaultProtocol) =>
      easyHandle.setOptionString(CurlEasyOption.DEFAULT_PROTOCOL, defaultProtocol);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY.html
  set proxy(String? proxy) => easyHandle.setOptionString(CurlEasyOption.PROXY, proxy);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY.html
  set preProxy(String? preProxy) => easyHandle.setOptionString(CurlEasyOption.PRE_PROXY, preProxy);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYPORT.html
  set proxyPort(int proxyPort) => easyHandle.setOptionInt(CurlEasyOption.PROXYPORT, proxyPort);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYTYPE.html
  set proxyType(CurlProxyType proxyType) => easyHandle.setOptionInt(CurlEasyOption.PROXYTYPE, proxyType.rawValue);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOPROXY.html
  set noProxy(Iterable<String> noProxy) =>
      easyHandle.setOptionString(CurlEasyOption.NOPROXY, noProxy.join(",").nullIfEmpty);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPPROXYTUNNEL.html
  set httpProxyTunnel(bool httpProxyTunnel) =>
      easyHandle.setOptionBool(CurlEasyOption.HTTPPROXYTUNNEL, httpProxyTunnel);
  //endregion

  //region Names and passwords options (authentication)
  /// API docs: https://curl.se/libcurl/c/CURLOPT_USERPWD.html
  set userPassword(String? userPassword) => easyHandle.setOptionString(CurlEasyOption.USERPWD, userPassword);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYUSERPWD.html
  set proxyUserPassword(String? proxyUserPassword) =>
      easyHandle.setOptionString(CurlEasyOption.PROXYUSERPWD, proxyUserPassword);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_USERNAME.html
  set username(String username) => easyHandle.setOptionString(CurlEasyOption.USERNAME, username);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PASSWORD.html
  set password(String password) => easyHandle.setOptionString(CurlEasyOption.PASSWORD, password);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LOGIN_OPTIONS.html
  set loginOptions(String? loginOptions) => easyHandle.setOptionString(CurlEasyOption.LOGIN_OPTIONS, loginOptions);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYUSERNAME.html
  set proxyUsername(String proxyUsername) => easyHandle.setOptionString(CurlEasyOption.PROXYUSERNAME, proxyUsername);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYPASSWORD.html
  set proxyPassword(String proxyPassword) => easyHandle.setOptionString(CurlEasyOption.PROXYPASSWORD, proxyPassword);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPAUTH.html
  set httpAuth(Iterable<CurlAuth> httpAuth) => easyHandle.setOptionInt(CurlEasyOption.HTTPAUTH, httpAuth.toBitMask());

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYAUTH.html
  set proxyAuth(Iterable<CurlAuth> proxyAuth) =>
      easyHandle.setOptionInt(CurlEasyOption.PROXYAUTH, proxyAuth.toBitMask());
  //endregion

  //region Http options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_AUTOREFERER.html
  set autoReferer(bool autoReferer) => easyHandle.setOptionBool(CurlEasyOption.AUTOREFERER, autoReferer);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ACCEPT_ENCODING.html
  set acceptEncoding(String? acceptEncoding) =>
      easyHandle.setOptionString(CurlEasyOption.ACCEPT_ENCODING, acceptEncoding);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FOLLOWLOCATION.html
  set followLocation(bool followLocation) => easyHandle.setOptionBool(CurlEasyOption.FOLLOWLOCATION, followLocation);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXREDIRS.html
  set maxRedirects(int maxRedirects) => easyHandle.setOptionInt(CurlEasyOption.MAXREDIRS, maxRedirects);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POST.html
  set post(bool post) => easyHandle.setOptionBool(CurlEasyOption.POST, post);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POSTFIELDSIZE_LARGE.html
  set postFieldSize(int postFieldSize) => easyHandle.setOptionOff(CurlEasyOption.POSTFIELDSIZE_LARGE, postFieldSize);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_REFERER.html
  set referer(String? referer) => easyHandle.setOptionString(CurlEasyOption.REFERER, referer);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_USERAGENT.html
  set userAgent(String? userAgent) => easyHandle.setOptionString(CurlEasyOption.USERAGENT, userAgent);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPHEADER.html
  set httpHeader(Map<String, String?>? httpHeader) =>
      _setOptionStrings(CurlEasyOption.HTTPHEADER, _mapHeaders(httpHeader));

  /// API docs: https://curl.se/libcurl/c/HEADEROPT.html
  set headerOptions(CurlHeaderBehaviour headerOptions) =>
      easyHandle.setOptionInt(CurlEasyOption.HEADEROPT, headerOptions.rawValue);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYHEADER.html
  set proxyHeader(Map<String, String?>? proxyHeader) =>
      _setOptionStrings(CurlEasyOption.PROXYHEADER, _mapHeaders(proxyHeader));

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP200ALIASES.html
  set http200Aliases(Iterable<int>? http200Aliases) =>
      _setOptionStrings(CurlEasyOption.HTTP200ALIASES, http200Aliases?.map((e) => e.toString()));

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIE.html
  set cookie(String? cookie) => easyHandle.setOptionString(CurlEasyOption.COOKIE, cookie);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIEFILE.html
  set cookieFile(String? cookieFile) => easyHandle.setOptionString(CurlEasyOption.COOKIEFILE, cookieFile);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIEJAR.html
  set cookieJar(String? cookieJar) => easyHandle.setOptionString(CurlEasyOption.COOKIEJAR, cookieJar);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIESESSION.html
  set cookieSession(bool cookieSession) => easyHandle.setOptionBool(CurlEasyOption.COOKIESESSION, cookieSession);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIELIST.html
  set cookieList(String? cookieList) => easyHandle.setOptionString(CurlEasyOption.COOKIELIST, cookieList);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPGET.html
  set httpGet(bool httpGet) => easyHandle.setOptionBool(CurlEasyOption.HTTPGET, httpGet);
  //endregion

  //region Protocol options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_CUSTOMREQUEST.html
  set customRequest(String? customRequest) => easyHandle.setOptionString(CurlEasyOption.CUSTOMREQUEST, customRequest);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOBODY.html
  set noBody(bool noBody) => easyHandle.setOptionBool(CurlEasyOption.NOBODY, noBody);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_INFILESIZE_LARGE.html
  set inFileSize(int inFileSize) => easyHandle.setOptionOff(CurlEasyOption.INFILESIZE_LARGE, inFileSize);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_UPLOAD.html
  set upload(bool upload) => easyHandle.setOptionBool(CurlEasyOption.UPLOAD, upload);
  //endregion

  //region Connection options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMEOUT_MS.html
  set timeout(Duration timeout) => easyHandle.setOptionInt(CurlEasyOption.TIMEOUT_MS, timeout.inMilliseconds);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FRESH_CONNECT.html
  set freshConnect(bool freshConnect) => easyHandle.setOptionBool(CurlEasyOption.FRESH_CONNECT, freshConnect);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FORBID_REUSE.html
  set forbidReuse(bool forbidReuse) => easyHandle.setOptionBool(CurlEasyOption.FORBID_REUSE, forbidReuse);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONNECTTIMEOUT_MS.html
  set connectTimeout(Duration connectTimeout) =>
      easyHandle.setOptionInt(CurlEasyOption.CONNECTTIMEOUT_MS, connectTimeout.inMilliseconds);
  //endregion
}

final _writeCallbackPtr =
    Pointer.fromFunction<Size Function(Pointer<Char>, Size, Size, Pointer<Void>)>(_writeCallback, CURL_WRITEFUNC_ERROR);

int _writeCallback(
  Pointer<Char> ptr,
  int size,
  int nmemb,
  Pointer<Void> userdata,
) {
  final instance = CurlStorableHandle.existingInstance<CurlEasy>(userdata);

  final writeFunc = instance.options._writeFunc;
  if (writeFunc == null) {
    return CURL_WRITEFUNC_ERROR;
  }

  return writeFunc(ptr, size, nmemb).when(
    error: () => CURL_WRITEFUNC_ERROR,
    pause: () => CURL_WRITEFUNC_PAUSE,
    bytesWritten: (bytesWritten) => bytesWritten,
  );
}

final _readCallbackPtr =
    Pointer.fromFunction<Size Function(Pointer<Char>, Size, Size, Pointer<Void>)>(_readCallback, CURL_READFUNC_ABORT);

int _readCallback(
  Pointer<Char> buffer,
  int size,
  int nitems,
  Pointer<Void> userdata,
) {
  final instance = CurlStorableHandle.existingInstance<CurlEasy>(userdata);

  final readFunc = instance.options._readFunc;
  if (readFunc == null) {
    return CURL_READFUNC_ABORT;
  }

  return readFunc(buffer, size, nitems).when(
    abort: () => CURL_READFUNC_ABORT,
    pause: () => CURL_READFUNC_PAUSE,
    bytesRead: (bytesRead) => bytesRead,
  );
}

final _seekCallbackPtr =
    Pointer.fromFunction<Size Function(Pointer<Void>, curl_off_t, Int32)>(_seekCallback, CURL_SEEKFUNC_FAIL);

int _seekCallback(
  Pointer<Void> userdata,
  int offset,
  int origin,
) {
  final instance = CurlStorableHandle.existingInstance<CurlEasy>(userdata);

  final seekFunc = instance.options._seekFunc;
  if (seekFunc == null) {
    return CURL_SEEKFUNC_FAIL;
  }

  switch (seekFunc(origin, CurlSeekOrigin.values[origin])) {
    case CurlSeekFuncResult.ok:
      return CURL_SEEKFUNC_OK;
    case CurlSeekFuncResult.fail:
      return CURL_SEEKFUNC_FAIL;
    case CurlSeekFuncResult.cantSeek:
      return CURL_SEEKFUNC_CANTSEEK;
  }
}

const _headerCallbackExceptionalReturn =
    -1; // if not defined as constant, then `Argument 'exceptionalReturn' must be a constant` is reported
final _headerCallbackPtr = Pointer.fromFunction<Size Function(Pointer<Char>, Size, Size, Pointer<Void>)>(
  _headerCallback,
  _headerCallbackExceptionalReturn,
);

int _headerCallback(
  Pointer<Char> buffer,
  int size,
  int nitems,
  Pointer<Void> userdata,
) {
  final instance = CurlStorableHandle.existingInstance<CurlEasy>(userdata);

  final headerFunc = instance.options._headerFunc;
  if (headerFunc == null) {
    return -1;
  }

  return headerFunc(buffer, size, nitems);
}
