// ignore_for_file: constant_identifier_names

import 'package:libcurl/src/curl_base.dart';
import 'package:libcurl/src/ffi/bindings.g.dart';

// `static const int CURLOPT_(\w+).*;`
// ->
// `/// API docs: https://curl.se/libcurl/c/CURLOPT_$1.html\n  static const $1 = CurlEasyOption._(CURLoption.CURLOPT_$1);\n`

/// API docs: https://curl.se/libcurl/c/curl_easy_setopt.html
class CurlEasyOption extends CurlOption {
  /// API docs: https://curl.se/libcurl/c/CURLOPT_WRITEDATA.html
  static const WRITEDATA = CurlEasyOption._(CURLoption.CURLOPT_WRITEDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_URL.html
  static const URL = CurlEasyOption._(CURLoption.CURLOPT_URL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PORT.html
  static const PORT = CurlEasyOption._(CURLoption.CURLOPT_PORT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY.html
  static const PROXY = CurlEasyOption._(CURLoption.CURLOPT_PROXY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_USERPWD.html
  static const USERPWD = CurlEasyOption._(CURLoption.CURLOPT_USERPWD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYUSERPWD.html
  static const PROXYUSERPWD = CurlEasyOption._(CURLoption.CURLOPT_PROXYUSERPWD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RANGE.html
  static const RANGE = CurlEasyOption._(CURLoption.CURLOPT_RANGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_READDATA.html
  static const READDATA = CurlEasyOption._(CURLoption.CURLOPT_READDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ERRORBUFFER.html
  static const ERRORBUFFER = CurlEasyOption._(CURLoption.CURLOPT_ERRORBUFFER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_WRITEFUNCTION.html
  static const WRITEFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_WRITEFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_READFUNCTION.html
  static const READFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_READFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMEOUT.html
  static const TIMEOUT = CurlEasyOption._(CURLoption.CURLOPT_TIMEOUT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_INFILESIZE.html
  static const INFILESIZE = CurlEasyOption._(CURLoption.CURLOPT_INFILESIZE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POSTFIELDS.html
  static const POSTFIELDS = CurlEasyOption._(CURLoption.CURLOPT_POSTFIELDS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_REFERER.html
  static const REFERER = CurlEasyOption._(CURLoption.CURLOPT_REFERER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTPPORT.html
  static const FTPPORT = CurlEasyOption._(CURLoption.CURLOPT_FTPPORT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_USERAGENT.html
  static const USERAGENT = CurlEasyOption._(CURLoption.CURLOPT_USERAGENT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LOW_SPEED_LIMIT.html
  static const LOW_SPEED_LIMIT = CurlEasyOption._(CURLoption.CURLOPT_LOW_SPEED_LIMIT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LOW_SPEED_TIME.html
  static const LOW_SPEED_TIME = CurlEasyOption._(CURLoption.CURLOPT_LOW_SPEED_TIME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RESUME_FROM.html
  static const RESUME_FROM = CurlEasyOption._(CURLoption.CURLOPT_RESUME_FROM);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIE.html
  static const COOKIE = CurlEasyOption._(CURLoption.CURLOPT_COOKIE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPHEADER.html
  static const HTTPHEADER = CurlEasyOption._(CURLoption.CURLOPT_HTTPHEADER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPPOST.html
  static const HTTPPOST = CurlEasyOption._(CURLoption.CURLOPT_HTTPPOST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLCERT.html
  static const SSLCERT = CurlEasyOption._(CURLoption.CURLOPT_SSLCERT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_KEYPASSWD.html
  static const KEYPASSWD = CurlEasyOption._(CURLoption.CURLOPT_KEYPASSWD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CRLF.html
  static const CRLF = CurlEasyOption._(CURLoption.CURLOPT_CRLF);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_QUOTE.html
  static const QUOTE = CurlEasyOption._(CURLoption.CURLOPT_QUOTE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HEADERDATA.html
  static const HEADERDATA = CurlEasyOption._(CURLoption.CURLOPT_HEADERDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIEFILE.html
  static const COOKIEFILE = CurlEasyOption._(CURLoption.CURLOPT_COOKIEFILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLVERSION.html
  static const SSLVERSION = CurlEasyOption._(CURLoption.CURLOPT_SSLVERSION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMECONDITION.html
  static const TIMECONDITION = CurlEasyOption._(CURLoption.CURLOPT_TIMECONDITION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMEVALUE.html
  static const TIMEVALUE = CurlEasyOption._(CURLoption.CURLOPT_TIMEVALUE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CUSTOMREQUEST.html
  static const CUSTOMREQUEST = CurlEasyOption._(CURLoption.CURLOPT_CUSTOMREQUEST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_STDERR.html
  static const STDERR = CurlEasyOption._(CURLoption.CURLOPT_STDERR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POSTQUOTE.html
  static const POSTQUOTE = CurlEasyOption._(CURLoption.CURLOPT_POSTQUOTE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_OBSOLETE40.html
  static const OBSOLETE40 = CurlEasyOption._(CURLoption.CURLOPT_OBSOLETE40);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_VERBOSE.html
  static const VERBOSE = CurlEasyOption._(CURLoption.CURLOPT_VERBOSE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HEADER.html
  static const HEADER = CurlEasyOption._(CURLoption.CURLOPT_HEADER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOPROGRESS.html
  static const NOPROGRESS = CurlEasyOption._(CURLoption.CURLOPT_NOPROGRESS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOBODY.html
  static const NOBODY = CurlEasyOption._(CURLoption.CURLOPT_NOBODY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FAILONERROR.html
  static const FAILONERROR = CurlEasyOption._(CURLoption.CURLOPT_FAILONERROR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_UPLOAD.html
  static const UPLOAD = CurlEasyOption._(CURLoption.CURLOPT_UPLOAD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POST.html
  static const POST = CurlEasyOption._(CURLoption.CURLOPT_POST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DIRLISTONLY.html
  static const DIRLISTONLY = CurlEasyOption._(CURLoption.CURLOPT_DIRLISTONLY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_APPEND.html
  static const APPEND = CurlEasyOption._(CURLoption.CURLOPT_APPEND);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NETRC.html
  static const NETRC = CurlEasyOption._(CURLoption.CURLOPT_NETRC);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FOLLOWLOCATION.html
  static const FOLLOWLOCATION = CurlEasyOption._(CURLoption.CURLOPT_FOLLOWLOCATION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TRANSFERTEXT.html
  static const TRANSFERTEXT = CurlEasyOption._(CURLoption.CURLOPT_TRANSFERTEXT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PUT.html
  static const PUT = CurlEasyOption._(CURLoption.CURLOPT_PUT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROGRESSFUNCTION.html
  static const PROGRESSFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_PROGRESSFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_XFERINFODATA.html
  static const XFERINFODATA = CurlEasyOption._(CURLoption.CURLOPT_XFERINFODATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_AUTOREFERER.html
  static const AUTOREFERER = CurlEasyOption._(CURLoption.CURLOPT_AUTOREFERER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYPORT.html
  static const PROXYPORT = CurlEasyOption._(CURLoption.CURLOPT_PROXYPORT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POSTFIELDSIZE.html
  static const POSTFIELDSIZE = CurlEasyOption._(CURLoption.CURLOPT_POSTFIELDSIZE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPPROXYTUNNEL.html
  static const HTTPPROXYTUNNEL = CurlEasyOption._(CURLoption.CURLOPT_HTTPPROXYTUNNEL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_INTERFACE.html
  static const INTERFACE = CurlEasyOption._(CURLoption.CURLOPT_INTERFACE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_KRBLEVEL.html
  static const KRBLEVEL = CurlEasyOption._(CURLoption.CURLOPT_KRBLEVEL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_VERIFYPEER.html
  static const SSL_VERIFYPEER = CurlEasyOption._(CURLoption.CURLOPT_SSL_VERIFYPEER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CAINFO.html
  static const CAINFO = CurlEasyOption._(CURLoption.CURLOPT_CAINFO);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXREDIRS.html
  static const MAXREDIRS = CurlEasyOption._(CURLoption.CURLOPT_MAXREDIRS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FILETIME.html
  static const FILETIME = CurlEasyOption._(CURLoption.CURLOPT_FILETIME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TELNETOPTIONS.html
  static const TELNETOPTIONS = CurlEasyOption._(CURLoption.CURLOPT_TELNETOPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXCONNECTS.html
  static const MAXCONNECTS = CurlEasyOption._(CURLoption.CURLOPT_MAXCONNECTS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_OBSOLETE72.html
  static const OBSOLETE72 = CurlEasyOption._(CURLoption.CURLOPT_OBSOLETE72);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FRESH_CONNECT.html
  static const FRESH_CONNECT = CurlEasyOption._(CURLoption.CURLOPT_FRESH_CONNECT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FORBID_REUSE.html
  static const FORBID_REUSE = CurlEasyOption._(CURLoption.CURLOPT_FORBID_REUSE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RANDOM_FILE.html
  static const RANDOM_FILE = CurlEasyOption._(CURLoption.CURLOPT_RANDOM_FILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_EGDSOCKET.html
  static const EGDSOCKET = CurlEasyOption._(CURLoption.CURLOPT_EGDSOCKET);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONNECTTIMEOUT.html
  static const CONNECTTIMEOUT = CurlEasyOption._(CURLoption.CURLOPT_CONNECTTIMEOUT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HEADERFUNCTION.html
  static const HEADERFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_HEADERFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPGET.html
  static const HTTPGET = CurlEasyOption._(CURLoption.CURLOPT_HTTPGET);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_VERIFYHOST.html
  static const SSL_VERIFYHOST = CurlEasyOption._(CURLoption.CURLOPT_SSL_VERIFYHOST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIEJAR.html
  static const COOKIEJAR = CurlEasyOption._(CURLoption.CURLOPT_COOKIEJAR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_CIPHER_LIST.html
  static const SSL_CIPHER_LIST = CurlEasyOption._(CURLoption.CURLOPT_SSL_CIPHER_LIST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP_VERSION.html
  static const HTTP_VERSION = CurlEasyOption._(CURLoption.CURLOPT_HTTP_VERSION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_USE_EPSV.html
  static const FTP_USE_EPSV = CurlEasyOption._(CURLoption.CURLOPT_FTP_USE_EPSV);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLCERTTYPE.html
  static const SSLCERTTYPE = CurlEasyOption._(CURLoption.CURLOPT_SSLCERTTYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLKEY.html
  static const SSLKEY = CurlEasyOption._(CURLoption.CURLOPT_SSLKEY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLKEYTYPE.html
  static const SSLKEYTYPE = CurlEasyOption._(CURLoption.CURLOPT_SSLKEYTYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLENGINE.html
  static const SSLENGINE = CurlEasyOption._(CURLoption.CURLOPT_SSLENGINE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLENGINE_DEFAULT.html
  static const SSLENGINE_DEFAULT = CurlEasyOption._(CURLoption.CURLOPT_SSLENGINE_DEFAULT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_USE_GLOBAL_CACHE.html
  static const DNS_USE_GLOBAL_CACHE = CurlEasyOption._(CURLoption.CURLOPT_DNS_USE_GLOBAL_CACHE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_CACHE_TIMEOUT.html
  static const DNS_CACHE_TIMEOUT = CurlEasyOption._(CURLoption.CURLOPT_DNS_CACHE_TIMEOUT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PREQUOTE.html
  static const PREQUOTE = CurlEasyOption._(CURLoption.CURLOPT_PREQUOTE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DEBUGFUNCTION.html
  static const DEBUGFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_DEBUGFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DEBUGDATA.html
  static const DEBUGDATA = CurlEasyOption._(CURLoption.CURLOPT_DEBUGDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIESESSION.html
  static const COOKIESESSION = CurlEasyOption._(CURLoption.CURLOPT_COOKIESESSION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CAPATH.html
  static const CAPATH = CurlEasyOption._(CURLoption.CURLOPT_CAPATH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_BUFFERSIZE.html
  static const BUFFERSIZE = CurlEasyOption._(CURLoption.CURLOPT_BUFFERSIZE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOSIGNAL.html
  static const NOSIGNAL = CurlEasyOption._(CURLoption.CURLOPT_NOSIGNAL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SHARE.html
  static const SHARE = CurlEasyOption._(CURLoption.CURLOPT_SHARE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYTYPE.html
  static const PROXYTYPE = CurlEasyOption._(CURLoption.CURLOPT_PROXYTYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ACCEPT_ENCODING.html
  static const ACCEPT_ENCODING = CurlEasyOption._(CURLoption.CURLOPT_ACCEPT_ENCODING);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PRIVATE.html
  static const PRIVATE = CurlEasyOption._(CURLoption.CURLOPT_PRIVATE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP200ALIASES.html
  static const HTTP200ALIASES = CurlEasyOption._(CURLoption.CURLOPT_HTTP200ALIASES);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_UNRESTRICTED_AUTH.html
  static const UNRESTRICTED_AUTH = CurlEasyOption._(CURLoption.CURLOPT_UNRESTRICTED_AUTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_USE_EPRT.html
  static const FTP_USE_EPRT = CurlEasyOption._(CURLoption.CURLOPT_FTP_USE_EPRT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTPAUTH.html
  static const HTTPAUTH = CurlEasyOption._(CURLoption.CURLOPT_HTTPAUTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_CTX_FUNCTION.html
  static const SSL_CTX_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_SSL_CTX_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_CTX_DATA.html
  static const SSL_CTX_DATA = CurlEasyOption._(CURLoption.CURLOPT_SSL_CTX_DATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_CREATE_MISSING_DIRS.html
  static const FTP_CREATE_MISSING_DIRS = CurlEasyOption._(CURLoption.CURLOPT_FTP_CREATE_MISSING_DIRS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYAUTH.html
  static const PROXYAUTH = CurlEasyOption._(CURLoption.CURLOPT_PROXYAUTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SERVER_RESPONSE_TIMEOUT.html
  static const SERVER_RESPONSE_TIMEOUT = CurlEasyOption._(CURLoption.CURLOPT_SERVER_RESPONSE_TIMEOUT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_IPRESOLVE.html
  static const IPRESOLVE = CurlEasyOption._(CURLoption.CURLOPT_IPRESOLVE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXFILESIZE.html
  static const MAXFILESIZE = CurlEasyOption._(CURLoption.CURLOPT_MAXFILESIZE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_INFILESIZE_LARGE.html
  static const INFILESIZE_LARGE = CurlEasyOption._(CURLoption.CURLOPT_INFILESIZE_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RESUME_FROM_LARGE.html
  static const RESUME_FROM_LARGE = CurlEasyOption._(CURLoption.CURLOPT_RESUME_FROM_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXFILESIZE_LARGE.html
  static const MAXFILESIZE_LARGE = CurlEasyOption._(CURLoption.CURLOPT_MAXFILESIZE_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NETRC_FILE.html
  static const NETRC_FILE = CurlEasyOption._(CURLoption.CURLOPT_NETRC_FILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_USE_SSL.html
  static const USE_SSL = CurlEasyOption._(CURLoption.CURLOPT_USE_SSL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POSTFIELDSIZE_LARGE.html
  static const POSTFIELDSIZE_LARGE = CurlEasyOption._(CURLoption.CURLOPT_POSTFIELDSIZE_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TCP_NODELAY.html
  static const TCP_NODELAY = CurlEasyOption._(CURLoption.CURLOPT_TCP_NODELAY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTPSSLAUTH.html
  static const FTPSSLAUTH = CurlEasyOption._(CURLoption.CURLOPT_FTPSSLAUTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_IOCTLFUNCTION.html
  static const IOCTLFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_IOCTLFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_IOCTLDATA.html
  static const IOCTLDATA = CurlEasyOption._(CURLoption.CURLOPT_IOCTLDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_ACCOUNT.html
  static const FTP_ACCOUNT = CurlEasyOption._(CURLoption.CURLOPT_FTP_ACCOUNT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COOKIELIST.html
  static const COOKIELIST = CurlEasyOption._(CURLoption.CURLOPT_COOKIELIST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_IGNORE_CONTENT_LENGTH.html
  static const IGNORE_CONTENT_LENGTH = CurlEasyOption._(CURLoption.CURLOPT_IGNORE_CONTENT_LENGTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_SKIP_PASV_IP.html
  static const FTP_SKIP_PASV_IP = CurlEasyOption._(CURLoption.CURLOPT_FTP_SKIP_PASV_IP);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_FILEMETHOD.html
  static const FTP_FILEMETHOD = CurlEasyOption._(CURLoption.CURLOPT_FTP_FILEMETHOD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LOCALPORT.html
  static const LOCALPORT = CurlEasyOption._(CURLoption.CURLOPT_LOCALPORT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LOCALPORTRANGE.html
  static const LOCALPORTRANGE = CurlEasyOption._(CURLoption.CURLOPT_LOCALPORTRANGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONNECT_ONLY.html
  static const CONNECT_ONLY = CurlEasyOption._(CURLoption.CURLOPT_CONNECT_ONLY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONV_FROM_NETWORK_FUNCTION.html
  static const CONV_FROM_NETWORK_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_CONV_FROM_NETWORK_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONV_TO_NETWORK_FUNCTION.html
  static const CONV_TO_NETWORK_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_CONV_TO_NETWORK_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONV_FROM_UTF8_FUNCTION.html
  static const CONV_FROM_UTF8_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_CONV_FROM_UTF8_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAX_SEND_SPEED_LARGE.html
  static const MAX_SEND_SPEED_LARGE = CurlEasyOption._(CURLoption.CURLOPT_MAX_SEND_SPEED_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAX_RECV_SPEED_LARGE.html
  static const MAX_RECV_SPEED_LARGE = CurlEasyOption._(CURLoption.CURLOPT_MAX_RECV_SPEED_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_ALTERNATIVE_TO_USER.html
  static const FTP_ALTERNATIVE_TO_USER = CurlEasyOption._(CURLoption.CURLOPT_FTP_ALTERNATIVE_TO_USER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SOCKOPTFUNCTION.html
  static const SOCKOPTFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_SOCKOPTFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SOCKOPTDATA.html
  static const SOCKOPTDATA = CurlEasyOption._(CURLoption.CURLOPT_SOCKOPTDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_SESSIONID_CACHE.html
  static const SSL_SESSIONID_CACHE = CurlEasyOption._(CURLoption.CURLOPT_SSL_SESSIONID_CACHE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_AUTH_TYPES.html
  static const SSH_AUTH_TYPES = CurlEasyOption._(CURLoption.CURLOPT_SSH_AUTH_TYPES);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_PUBLIC_KEYFILE.html
  static const SSH_PUBLIC_KEYFILE = CurlEasyOption._(CURLoption.CURLOPT_SSH_PUBLIC_KEYFILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_PRIVATE_KEYFILE.html
  static const SSH_PRIVATE_KEYFILE = CurlEasyOption._(CURLoption.CURLOPT_SSH_PRIVATE_KEYFILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_SSL_CCC.html
  static const FTP_SSL_CCC = CurlEasyOption._(CURLoption.CURLOPT_FTP_SSL_CCC);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMEOUT_MS.html
  static const TIMEOUT_MS = CurlEasyOption._(CURLoption.CURLOPT_TIMEOUT_MS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONNECTTIMEOUT_MS.html
  static const CONNECTTIMEOUT_MS = CurlEasyOption._(CURLoption.CURLOPT_CONNECTTIMEOUT_MS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP_TRANSFER_DECODING.html
  static const HTTP_TRANSFER_DECODING = CurlEasyOption._(CURLoption.CURLOPT_HTTP_TRANSFER_DECODING);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP_CONTENT_DECODING.html
  static const HTTP_CONTENT_DECODING = CurlEasyOption._(CURLoption.CURLOPT_HTTP_CONTENT_DECODING);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NEW_FILE_PERMS.html
  static const NEW_FILE_PERMS = CurlEasyOption._(CURLoption.CURLOPT_NEW_FILE_PERMS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NEW_DIRECTORY_PERMS.html
  static const NEW_DIRECTORY_PERMS = CurlEasyOption._(CURLoption.CURLOPT_NEW_DIRECTORY_PERMS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_POSTREDIR.html
  static const POSTREDIR = CurlEasyOption._(CURLoption.CURLOPT_POSTREDIR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_HOST_PUBLIC_KEY_MD5.html
  static const SSH_HOST_PUBLIC_KEY_MD5 = CurlEasyOption._(CURLoption.CURLOPT_SSH_HOST_PUBLIC_KEY_MD5);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_OPENSOCKETFUNCTION.html
  static const OPENSOCKETFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_OPENSOCKETFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_OPENSOCKETDATA.html
  static const OPENSOCKETDATA = CurlEasyOption._(CURLoption.CURLOPT_OPENSOCKETDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_COPYPOSTFIELDS.html
  static const COPYPOSTFIELDS = CurlEasyOption._(CURLoption.CURLOPT_COPYPOSTFIELDS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_TRANSFER_MODE.html
  static const PROXY_TRANSFER_MODE = CurlEasyOption._(CURLoption.CURLOPT_PROXY_TRANSFER_MODE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SEEKFUNCTION.html
  static const SEEKFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_SEEKFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SEEKDATA.html
  static const SEEKDATA = CurlEasyOption._(CURLoption.CURLOPT_SEEKDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CRLFILE.html
  static const CRLFILE = CurlEasyOption._(CURLoption.CURLOPT_CRLFILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ISSUERCERT.html
  static const ISSUERCERT = CurlEasyOption._(CURLoption.CURLOPT_ISSUERCERT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ADDRESS_SCOPE.html
  static const ADDRESS_SCOPE = CurlEasyOption._(CURLoption.CURLOPT_ADDRESS_SCOPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CERTINFO.html
  static const CERTINFO = CurlEasyOption._(CURLoption.CURLOPT_CERTINFO);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_USERNAME.html
  static const USERNAME = CurlEasyOption._(CURLoption.CURLOPT_USERNAME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PASSWORD.html
  static const PASSWORD = CurlEasyOption._(CURLoption.CURLOPT_PASSWORD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYUSERNAME.html
  static const PROXYUSERNAME = CurlEasyOption._(CURLoption.CURLOPT_PROXYUSERNAME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYPASSWORD.html
  static const PROXYPASSWORD = CurlEasyOption._(CURLoption.CURLOPT_PROXYPASSWORD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_NOPROXY.html
  static const NOPROXY = CurlEasyOption._(CURLoption.CURLOPT_NOPROXY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TFTP_BLKSIZE.html
  static const TFTP_BLKSIZE = CurlEasyOption._(CURLoption.CURLOPT_TFTP_BLKSIZE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SOCKS5_GSSAPI_SERVICE.html
  static const SOCKS5_GSSAPI_SERVICE = CurlEasyOption._(CURLoption.CURLOPT_SOCKS5_GSSAPI_SERVICE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SOCKS5_GSSAPI_NEC.html
  static const SOCKS5_GSSAPI_NEC = CurlEasyOption._(CURLoption.CURLOPT_SOCKS5_GSSAPI_NEC);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROTOCOLS.html
  static const PROTOCOLS = CurlEasyOption._(CURLoption.CURLOPT_PROTOCOLS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_REDIR_PROTOCOLS.html
  static const REDIR_PROTOCOLS = CurlEasyOption._(CURLoption.CURLOPT_REDIR_PROTOCOLS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_KNOWNHOSTS.html
  static const SSH_KNOWNHOSTS = CurlEasyOption._(CURLoption.CURLOPT_SSH_KNOWNHOSTS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_KEYFUNCTION.html
  static const SSH_KEYFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_SSH_KEYFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_KEYDATA.html
  static const SSH_KEYDATA = CurlEasyOption._(CURLoption.CURLOPT_SSH_KEYDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAIL_FROM.html
  static const MAIL_FROM = CurlEasyOption._(CURLoption.CURLOPT_MAIL_FROM);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAIL_RCPT.html
  static const MAIL_RCPT = CurlEasyOption._(CURLoption.CURLOPT_MAIL_RCPT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FTP_USE_PRET.html
  static const FTP_USE_PRET = CurlEasyOption._(CURLoption.CURLOPT_FTP_USE_PRET);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RTSP_REQUEST.html
  static const RTSP_REQUEST = CurlEasyOption._(CURLoption.CURLOPT_RTSP_REQUEST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RTSP_SESSION_ID.html
  static const RTSP_SESSION_ID = CurlEasyOption._(CURLoption.CURLOPT_RTSP_SESSION_ID);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RTSP_STREAM_URI.html
  static const RTSP_STREAM_URI = CurlEasyOption._(CURLoption.CURLOPT_RTSP_STREAM_URI);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RTSP_TRANSPORT.html
  static const RTSP_TRANSPORT = CurlEasyOption._(CURLoption.CURLOPT_RTSP_TRANSPORT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RTSP_CLIENT_CSEQ.html
  static const RTSP_CLIENT_CSEQ = CurlEasyOption._(CURLoption.CURLOPT_RTSP_CLIENT_CSEQ);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RTSP_SERVER_CSEQ.html
  static const RTSP_SERVER_CSEQ = CurlEasyOption._(CURLoption.CURLOPT_RTSP_SERVER_CSEQ);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_INTERLEAVEDATA.html
  static const INTERLEAVEDATA = CurlEasyOption._(CURLoption.CURLOPT_INTERLEAVEDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_INTERLEAVEFUNCTION.html
  static const INTERLEAVEFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_INTERLEAVEFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_WILDCARDMATCH.html
  static const WILDCARDMATCH = CurlEasyOption._(CURLoption.CURLOPT_WILDCARDMATCH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CHUNK_BGN_FUNCTION.html
  static const CHUNK_BGN_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_CHUNK_BGN_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CHUNK_END_FUNCTION.html
  static const CHUNK_END_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_CHUNK_END_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FNMATCH_FUNCTION.html
  static const FNMATCH_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_FNMATCH_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CHUNK_DATA.html
  static const CHUNK_DATA = CurlEasyOption._(CURLoption.CURLOPT_CHUNK_DATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_FNMATCH_DATA.html
  static const FNMATCH_DATA = CurlEasyOption._(CURLoption.CURLOPT_FNMATCH_DATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RESOLVE.html
  static const RESOLVE = CurlEasyOption._(CURLoption.CURLOPT_RESOLVE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TLSAUTH_USERNAME.html
  static const TLSAUTH_USERNAME = CurlEasyOption._(CURLoption.CURLOPT_TLSAUTH_USERNAME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TLSAUTH_PASSWORD.html
  static const TLSAUTH_PASSWORD = CurlEasyOption._(CURLoption.CURLOPT_TLSAUTH_PASSWORD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TLSAUTH_TYPE.html
  static const TLSAUTH_TYPE = CurlEasyOption._(CURLoption.CURLOPT_TLSAUTH_TYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TRANSFER_ENCODING.html
  static const TRANSFER_ENCODING = CurlEasyOption._(CURLoption.CURLOPT_TRANSFER_ENCODING);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CLOSESOCKETFUNCTION.html
  static const CLOSESOCKETFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_CLOSESOCKETFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CLOSESOCKETDATA.html
  static const CLOSESOCKETDATA = CurlEasyOption._(CURLoption.CURLOPT_CLOSESOCKETDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_GSSAPI_DELEGATION.html
  static const GSSAPI_DELEGATION = CurlEasyOption._(CURLoption.CURLOPT_GSSAPI_DELEGATION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_SERVERS.html
  static const DNS_SERVERS = CurlEasyOption._(CURLoption.CURLOPT_DNS_SERVERS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ACCEPTTIMEOUT_MS.html
  static const ACCEPTTIMEOUT_MS = CurlEasyOption._(CURLoption.CURLOPT_ACCEPTTIMEOUT_MS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TCP_KEEPALIVE.html
  static const TCP_KEEPALIVE = CurlEasyOption._(CURLoption.CURLOPT_TCP_KEEPALIVE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TCP_KEEPIDLE.html
  static const TCP_KEEPIDLE = CurlEasyOption._(CURLoption.CURLOPT_TCP_KEEPIDLE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TCP_KEEPINTVL.html
  static const TCP_KEEPINTVL = CurlEasyOption._(CURLoption.CURLOPT_TCP_KEEPINTVL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_OPTIONS.html
  static const SSL_OPTIONS = CurlEasyOption._(CURLoption.CURLOPT_SSL_OPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAIL_AUTH.html
  static const MAIL_AUTH = CurlEasyOption._(CURLoption.CURLOPT_MAIL_AUTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SASL_IR.html
  static const SASL_IR = CurlEasyOption._(CURLoption.CURLOPT_SASL_IR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_XFERINFOFUNCTION.html
  static const XFERINFOFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_XFERINFOFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_XOAUTH2_BEARER.html
  static const XOAUTH2_BEARER = CurlEasyOption._(CURLoption.CURLOPT_XOAUTH2_BEARER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_INTERFACE.html
  static const DNS_INTERFACE = CurlEasyOption._(CURLoption.CURLOPT_DNS_INTERFACE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_LOCAL_IP4.html
  static const DNS_LOCAL_IP4 = CurlEasyOption._(CURLoption.CURLOPT_DNS_LOCAL_IP4);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_LOCAL_IP6.html
  static const DNS_LOCAL_IP6 = CurlEasyOption._(CURLoption.CURLOPT_DNS_LOCAL_IP6);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LOGIN_OPTIONS.html
  static const LOGIN_OPTIONS = CurlEasyOption._(CURLoption.CURLOPT_LOGIN_OPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_ENABLE_NPN.html
  static const SSL_ENABLE_NPN = CurlEasyOption._(CURLoption.CURLOPT_SSL_ENABLE_NPN);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_ENABLE_ALPN.html
  static const SSL_ENABLE_ALPN = CurlEasyOption._(CURLoption.CURLOPT_SSL_ENABLE_ALPN);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_EXPECT_100_TIMEOUT_MS.html
  static const EXPECT_100_TIMEOUT_MS = CurlEasyOption._(CURLoption.CURLOPT_EXPECT_100_TIMEOUT_MS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXYHEADER.html
  static const PROXYHEADER = CurlEasyOption._(CURLoption.CURLOPT_PROXYHEADER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HEADEROPT.html
  static const HEADEROPT = CurlEasyOption._(CURLoption.CURLOPT_HEADEROPT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PINNEDPUBLICKEY.html
  static const PINNEDPUBLICKEY = CurlEasyOption._(CURLoption.CURLOPT_PINNEDPUBLICKEY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_UNIX_SOCKET_PATH.html
  static const UNIX_SOCKET_PATH = CurlEasyOption._(CURLoption.CURLOPT_UNIX_SOCKET_PATH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_VERIFYSTATUS.html
  static const SSL_VERIFYSTATUS = CurlEasyOption._(CURLoption.CURLOPT_SSL_VERIFYSTATUS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_FALSESTART.html
  static const SSL_FALSESTART = CurlEasyOption._(CURLoption.CURLOPT_SSL_FALSESTART);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PATH_AS_IS.html
  static const PATH_AS_IS = CurlEasyOption._(CURLoption.CURLOPT_PATH_AS_IS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SERVICE_NAME.html
  static const PROXY_SERVICE_NAME = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SERVICE_NAME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SERVICE_NAME.html
  static const SERVICE_NAME = CurlEasyOption._(CURLoption.CURLOPT_SERVICE_NAME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PIPEWAIT.html
  static const PIPEWAIT = CurlEasyOption._(CURLoption.CURLOPT_PIPEWAIT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DEFAULT_PROTOCOL.html
  static const DEFAULT_PROTOCOL = CurlEasyOption._(CURLoption.CURLOPT_DEFAULT_PROTOCOL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_STREAM_WEIGHT.html
  static const STREAM_WEIGHT = CurlEasyOption._(CURLoption.CURLOPT_STREAM_WEIGHT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_STREAM_DEPENDS.html
  static const STREAM_DEPENDS = CurlEasyOption._(CURLoption.CURLOPT_STREAM_DEPENDS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_STREAM_DEPENDS_E.html
  static const STREAM_DEPENDS_E = CurlEasyOption._(CURLoption.CURLOPT_STREAM_DEPENDS_E);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TFTP_NO_OPTIONS.html
  static const TFTP_NO_OPTIONS = CurlEasyOption._(CURLoption.CURLOPT_TFTP_NO_OPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CONNECT_TO.html
  static const CONNECT_TO = CurlEasyOption._(CURLoption.CURLOPT_CONNECT_TO);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TCP_FASTOPEN.html
  static const TCP_FASTOPEN = CurlEasyOption._(CURLoption.CURLOPT_TCP_FASTOPEN);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_KEEP_SENDING_ON_ERROR.html
  static const KEEP_SENDING_ON_ERROR = CurlEasyOption._(CURLoption.CURLOPT_KEEP_SENDING_ON_ERROR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_CAINFO.html
  static const PROXY_CAINFO = CurlEasyOption._(CURLoption.CURLOPT_PROXY_CAINFO);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_CAPATH.html
  static const PROXY_CAPATH = CurlEasyOption._(CURLoption.CURLOPT_PROXY_CAPATH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSL_VERIFYPEER.html
  static const PROXY_SSL_VERIFYPEER = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSL_VERIFYPEER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSL_VERIFYHOST.html
  static const PROXY_SSL_VERIFYHOST = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSL_VERIFYHOST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLVERSION.html
  static const PROXY_SSLVERSION = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLVERSION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_TLSAUTH_USERNAME.html
  static const PROXY_TLSAUTH_USERNAME = CurlEasyOption._(CURLoption.CURLOPT_PROXY_TLSAUTH_USERNAME);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_TLSAUTH_PASSWORD.html
  static const PROXY_TLSAUTH_PASSWORD = CurlEasyOption._(CURLoption.CURLOPT_PROXY_TLSAUTH_PASSWORD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_TLSAUTH_TYPE.html
  static const PROXY_TLSAUTH_TYPE = CurlEasyOption._(CURLoption.CURLOPT_PROXY_TLSAUTH_TYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLCERT.html
  static const PROXY_SSLCERT = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLCERT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLCERTTYPE.html
  static const PROXY_SSLCERTTYPE = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLCERTTYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLKEY.html
  static const PROXY_SSLKEY = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLKEY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLKEYTYPE.html
  static const PROXY_SSLKEYTYPE = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLKEYTYPE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_KEYPASSWD.html
  static const PROXY_KEYPASSWD = CurlEasyOption._(CURLoption.CURLOPT_PROXY_KEYPASSWD);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSL_CIPHER_LIST.html
  static const PROXY_SSL_CIPHER_LIST = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSL_CIPHER_LIST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_CRLFILE.html
  static const PROXY_CRLFILE = CurlEasyOption._(CURLoption.CURLOPT_PROXY_CRLFILE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSL_OPTIONS.html
  static const PROXY_SSL_OPTIONS = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSL_OPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PRE_PROXY.html
  static const PRE_PROXY = CurlEasyOption._(CURLoption.CURLOPT_PRE_PROXY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_PINNEDPUBLICKEY.html
  static const PROXY_PINNEDPUBLICKEY = CurlEasyOption._(CURLoption.CURLOPT_PROXY_PINNEDPUBLICKEY);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ABSTRACT_UNIX_SOCKET.html
  static const ABSTRACT_UNIX_SOCKET = CurlEasyOption._(CURLoption.CURLOPT_ABSTRACT_UNIX_SOCKET);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SUPPRESS_CONNECT_HEADERS.html
  static const SUPPRESS_CONNECT_HEADERS = CurlEasyOption._(CURLoption.CURLOPT_SUPPRESS_CONNECT_HEADERS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_REQUEST_TARGET.html
  static const REQUEST_TARGET = CurlEasyOption._(CURLoption.CURLOPT_REQUEST_TARGET);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SOCKS5_AUTH.html
  static const SOCKS5_AUTH = CurlEasyOption._(CURLoption.CURLOPT_SOCKS5_AUTH);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_COMPRESSION.html
  static const SSH_COMPRESSION = CurlEasyOption._(CURLoption.CURLOPT_SSH_COMPRESSION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MIMEPOST.html
  static const MIMEPOST = CurlEasyOption._(CURLoption.CURLOPT_MIMEPOST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TIMEVALUE_LARGE.html
  static const TIMEVALUE_LARGE = CurlEasyOption._(CURLoption.CURLOPT_TIMEVALUE_LARGE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS.html
  static const HAPPY_EYEBALLS_TIMEOUT_MS = CurlEasyOption._(CURLoption.CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RESOLVER_START_FUNCTION.html
  static const RESOLVER_START_FUNCTION = CurlEasyOption._(CURLoption.CURLOPT_RESOLVER_START_FUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_RESOLVER_START_DATA.html
  static const RESOLVER_START_DATA = CurlEasyOption._(CURLoption.CURLOPT_RESOLVER_START_DATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HAPROXYPROTOCOL.html
  static const HAPROXYPROTOCOL = CurlEasyOption._(CURLoption.CURLOPT_HAPROXYPROTOCOL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DNS_SHUFFLE_ADDRESSES.html
  static const DNS_SHUFFLE_ADDRESSES = CurlEasyOption._(CURLoption.CURLOPT_DNS_SHUFFLE_ADDRESSES);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TLS13_CIPHERS.html
  static const TLS13_CIPHERS = CurlEasyOption._(CURLoption.CURLOPT_TLS13_CIPHERS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_TLS13_CIPHERS.html
  static const PROXY_TLS13_CIPHERS = CurlEasyOption._(CURLoption.CURLOPT_PROXY_TLS13_CIPHERS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DISALLOW_USERNAME_IN_URL.html
  static const DISALLOW_USERNAME_IN_URL = CurlEasyOption._(CURLoption.CURLOPT_DISALLOW_USERNAME_IN_URL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DOH_URL.html
  static const DOH_URL = CurlEasyOption._(CURLoption.CURLOPT_DOH_URL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_UPLOAD_BUFFERSIZE.html
  static const UPLOAD_BUFFERSIZE = CurlEasyOption._(CURLoption.CURLOPT_UPLOAD_BUFFERSIZE);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_UPKEEP_INTERVAL_MS.html
  static const UPKEEP_INTERVAL_MS = CurlEasyOption._(CURLoption.CURLOPT_UPKEEP_INTERVAL_MS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CURLU.html
  static const CURLU = CurlEasyOption._(CURLoption.CURLOPT_CURLU);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TRAILERFUNCTION.html
  static const TRAILERFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_TRAILERFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_TRAILERDATA.html
  static const TRAILERDATA = CurlEasyOption._(CURLoption.CURLOPT_TRAILERDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HTTP09_ALLOWED.html
  static const HTTP09_ALLOWED = CurlEasyOption._(CURLoption.CURLOPT_HTTP09_ALLOWED);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ALTSVC_CTRL.html
  static const ALTSVC_CTRL = CurlEasyOption._(CURLoption.CURLOPT_ALTSVC_CTRL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ALTSVC.html
  static const ALTSVC = CurlEasyOption._(CURLoption.CURLOPT_ALTSVC);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXAGE_CONN.html
  static const MAXAGE_CONN = CurlEasyOption._(CURLoption.CURLOPT_MAXAGE_CONN);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SASL_AUTHZID.html
  static const SASL_AUTHZID = CurlEasyOption._(CURLoption.CURLOPT_SASL_AUTHZID);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAIL_RCPT_ALLLOWFAILS.html
  static const MAIL_RCPT_ALLLOWFAILS = CurlEasyOption._(CURLoption.CURLOPT_MAIL_RCPT_ALLLOWFAILS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLCERT_BLOB.html
  static const SSLCERT_BLOB = CurlEasyOption._(CURLoption.CURLOPT_SSLCERT_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSLKEY_BLOB.html
  static const SSLKEY_BLOB = CurlEasyOption._(CURLoption.CURLOPT_SSLKEY_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLCERT_BLOB.html
  static const PROXY_SSLCERT_BLOB = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLCERT_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_SSLKEY_BLOB.html
  static const PROXY_SSLKEY_BLOB = CurlEasyOption._(CURLoption.CURLOPT_PROXY_SSLKEY_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_ISSUERCERT_BLOB.html
  static const ISSUERCERT_BLOB = CurlEasyOption._(CURLoption.CURLOPT_ISSUERCERT_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_ISSUERCERT.html
  static const PROXY_ISSUERCERT = CurlEasyOption._(CURLoption.CURLOPT_PROXY_ISSUERCERT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_ISSUERCERT_BLOB.html
  static const PROXY_ISSUERCERT_BLOB = CurlEasyOption._(CURLoption.CURLOPT_PROXY_ISSUERCERT_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSL_EC_CURVES.html
  static const SSL_EC_CURVES = CurlEasyOption._(CURLoption.CURLOPT_SSL_EC_CURVES);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HSTS_CTRL.html
  static const HSTS_CTRL = CurlEasyOption._(CURLoption.CURLOPT_HSTS_CTRL);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HSTS.html
  static const HSTS = CurlEasyOption._(CURLoption.CURLOPT_HSTS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HSTSREADFUNCTION.html
  static const HSTSREADFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_HSTSREADFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HSTSREADDATA.html
  static const HSTSREADDATA = CurlEasyOption._(CURLoption.CURLOPT_HSTSREADDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HSTSWRITEFUNCTION.html
  static const HSTSWRITEFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_HSTSWRITEFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_HSTSWRITEDATA.html
  static const HSTSWRITEDATA = CurlEasyOption._(CURLoption.CURLOPT_HSTSWRITEDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_AWS_SIGV4.html
  static const AWS_SIGV4 = CurlEasyOption._(CURLoption.CURLOPT_AWS_SIGV4);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DOH_SSL_VERIFYPEER.html
  static const DOH_SSL_VERIFYPEER = CurlEasyOption._(CURLoption.CURLOPT_DOH_SSL_VERIFYPEER);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DOH_SSL_VERIFYHOST.html
  static const DOH_SSL_VERIFYHOST = CurlEasyOption._(CURLoption.CURLOPT_DOH_SSL_VERIFYHOST);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_DOH_SSL_VERIFYSTATUS.html
  static const DOH_SSL_VERIFYSTATUS = CurlEasyOption._(CURLoption.CURLOPT_DOH_SSL_VERIFYSTATUS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CAINFO_BLOB.html
  static const CAINFO_BLOB = CurlEasyOption._(CURLoption.CURLOPT_CAINFO_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROXY_CAINFO_BLOB.html
  static const PROXY_CAINFO_BLOB = CurlEasyOption._(CURLoption.CURLOPT_PROXY_CAINFO_BLOB);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256.html
  static const SSH_HOST_PUBLIC_KEY_SHA256 = CurlEasyOption._(CURLoption.CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PREREQFUNCTION.html
  static const PREREQFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_PREREQFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PREREQDATA.html
  static const PREREQDATA = CurlEasyOption._(CURLoption.CURLOPT_PREREQDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MAXLIFETIME_CONN.html
  static const MAXLIFETIME_CONN = CurlEasyOption._(CURLoption.CURLOPT_MAXLIFETIME_CONN);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_MIME_OPTIONS.html
  static const MIME_OPTIONS = CurlEasyOption._(CURLoption.CURLOPT_MIME_OPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_HOSTKEYFUNCTION.html
  static const SSH_HOSTKEYFUNCTION = CurlEasyOption._(CURLoption.CURLOPT_SSH_HOSTKEYFUNCTION);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_SSH_HOSTKEYDATA.html
  static const SSH_HOSTKEYDATA = CurlEasyOption._(CURLoption.CURLOPT_SSH_HOSTKEYDATA);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_PROTOCOLS_STR.html
  static const PROTOCOLS_STR = CurlEasyOption._(CURLoption.CURLOPT_PROTOCOLS_STR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_REDIR_PROTOCOLS_STR.html
  static const REDIR_PROTOCOLS_STR = CurlEasyOption._(CURLoption.CURLOPT_REDIR_PROTOCOLS_STR);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_WS_OPTIONS.html
  static const WS_OPTIONS = CurlEasyOption._(CURLoption.CURLOPT_WS_OPTIONS);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_CA_CACHE_TIMEOUT.html
  static const CA_CACHE_TIMEOUT = CurlEasyOption._(CURLoption.CURLOPT_CA_CACHE_TIMEOUT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_QUICK_EXIT.html
  static const QUICK_EXIT = CurlEasyOption._(CURLoption.CURLOPT_QUICK_EXIT);

  /// API docs: https://curl.se/libcurl/c/CURLOPT_LASTENTRY.html
  static const LASTENTRY = CurlEasyOption._(CURLoption.CURLOPT_LASTENTRY);

  const CurlEasyOption.fromRawValue(this.rawValue);

  const CurlEasyOption._(this.rawValue);

  @override
  final int rawValue;
}
