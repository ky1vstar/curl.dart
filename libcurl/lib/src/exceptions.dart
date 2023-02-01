import 'package:libcurl/src/curl_base.dart';

class CurlException implements Exception {
  const factory CurlException(String message) = CurlGenericException;
}

class CurlGenericException implements CurlException {
  const CurlGenericException(this.message);

  final String message;

  @override
  String toString() {
    return "CurlGenericException: $message";
  }
}

class CurlCodeException<T extends CurlCode> implements CurlException {
  const CurlCodeException(this.code);

  final T code;

  @override
  String toString() {
    final strError = code.strError();
    if (strError != null) {
      return "CurlCodeException($code): $strError";
    } else {
      return "CurlCodeException($code)";
    }
  }
}
