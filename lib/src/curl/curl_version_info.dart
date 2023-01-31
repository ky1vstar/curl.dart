import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl_version_info.freezed.dart';

@freezed
class CurlVersionInfo with _$CurlVersionInfo {
  const factory CurlVersionInfo({
    required int age,
    required String version,
    required int versionNumber,
    required String host,
    required int features,
    required String sslVersion,
    required String libzVersion,
    required List<String> protocols,
    required String? ares,
    required int? aresNumber,
    required String? libidn,
    required int? iconvVersionNumber,
    required String? libsshVersion,
    required int? brotliVersionNumber,
    required String? brotliVersion,
    required int? nghttp2VersionNumber,
    required String? nghttp2Version,
    required String? quicVersion,
    required String? caInfo,
    required String? caPath,
    required int? zstdVersionNumber,
    required String? zstdVersion,
    required String? hyperVersion,
    required String? gsaslVersion,
    required List<String>? featureNames,
  }) = _CurlVersionInfo;
}
