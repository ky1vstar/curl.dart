// ignore_for_file: avoid_setters_without_getters

import 'dart:ffi';

import 'package:curl_http/curl.dart';
import 'package:curl_http/src/curl/bindings.g.dart';
import 'package:curl_http/src/curl/curl_base.dart';
import 'package:curl_http/src/curl/utils.dart';

/// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
class CurlEasyOptionsService {
  CurlEasyOptionsService(this.easyHandle);

  final CurlEasy easyHandle;

  CurlReadFunc? _readFunc;
  CurlWriteFunc? _writeFunc;
  CurlHeaderFunc? _headerFunc;

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
  ///  - https://curl.se/libcurl/c/CURLOPT_HEADERFUNCTION.html
  ///  - https://curl.se/libcurl/c/CURLOPT_HEADERDATA.html
  set headerFunction(CurlHeaderFunc? headerFunc) {
    if (headerFunc == null) {
      easyHandle.setOptionPointer(CurlEasyOption.HEADERFUNCTION, nullptr);
      easyHandle.setOptionPointer(CurlEasyOption.HEADERDATA, nullptr);
      _headerFunc = null;
    } else {
      easyHandle.setOptionPointer(CurlEasyOption.HEADERFUNCTION, _headerCallbackPtr);
      easyHandle.setOptionPointer(CurlEasyOption.HEADERDATA, easyHandle.handle);
      _headerFunc = headerFunc;
    }
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

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIEJAR.html
  set cookieJar(String cookieJar) => easyHandle.setOptionString(CurlEasyOption.COOKIEJAR, cookieJar);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIESESSION.html
  void startNewCookieSession() => easyHandle.setOptionBool(CurlEasyOption.COOKIESESSION, true);
  //endregion

  //region Connection options
  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMEOUT_MS.html
  set timeout(Duration timeout) => easyHandle.setOptionInt(CurlEasyOption.TIMEOUT_MS, timeout.inMilliseconds);

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
