// ignore_for_file: constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libcurl/src/bindings.g.dart';

part 'curl_header.freezed.dart';

const kLatestCurlHeaderRequest = -1;

/// API docs: https://everything.curl.dev/libcurl-http/headerapi/struct
@freezed
class CurlHeader with _$CurlHeader {
  const factory CurlHeader({
    required String name,
    required String value,
    required int amount,
    required int index,
    required CurlHeaderOrigin origin,
  }) = _CurlHeader;
}

// `const int CURLH_(\w+).*;`
// ->
// `$1(CURLH_$1),\n`

/// API docs: https://everything.curl.dev/libcurl-http/headerapi
enum CurlHeaderOrigin {
  HEADER(CURLH_HEADER),

  TRAILER(CURLH_TRAILER),

  CONNECT(CURLH_CONNECT),

  http1XX(CURLH_1XX),

  PSEUDO(CURLH_PSEUDO),
  ;

  const CurlHeaderOrigin(this.rawValue);

  factory CurlHeaderOrigin.fromRawValue(int rawValue) {
    return CurlHeaderOrigin.values.firstWhere(
      (element) => element.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue was given to $CurlHeaderOrigin");
        return CurlHeaderOrigin.HEADER;
      },
    );
  }

  final int rawValue;
}

extension CurlHeaderOriginIterable on Iterable<CurlHeaderOrigin> {
  int toBitMask() => fold(0, (value, element) => value | element.rawValue);
}

// `static const int CURLHE_(\w+).*;`
// ->
// `$1(CURLHcode.CURLHE_$1),\n`

/// API docs: https://curl.se/libcurl/c/curl_easy_header.html#RETURN
enum CurlHeaderCode {
  OK(CURLHcode.CURLHE_OK),

  BADINDEX(CURLHcode.CURLHE_BADINDEX),

  MISSING(CURLHcode.CURLHE_MISSING),

  NOHEADERS(CURLHcode.CURLHE_NOHEADERS),

  NOREQUEST(CURLHcode.CURLHE_NOREQUEST),

  OUT_OF_MEMORY(CURLHcode.CURLHE_OUT_OF_MEMORY),

  BAD_ARGUMENT(CURLHcode.CURLHE_BAD_ARGUMENT),

  NOT_BUILT_IN(CURLHcode.CURLHE_NOT_BUILT_IN),
  ;

  const CurlHeaderCode(this.rawValue);

  factory CurlHeaderCode.fromRawValue(int rawValue) {
    return CurlHeaderCode.values.firstWhere(
      (element) => element.rawValue == rawValue,
      orElse: () {
        assert(false, "Unknown raw value $rawValue was given to $CurlHeaderCode");
        return CurlHeaderCode.BAD_ARGUMENT;
      },
    );
  }

  final int rawValue;
}
