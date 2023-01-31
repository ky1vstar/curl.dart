// ignore_for_file: avoid_classes_with_only_static_members, avoid_setters_without_getters

import 'dart:ffi';

import 'package:curl_http/curl.dart';
import 'package:curl_http/src/curl/bindings.g.dart';
import 'package:curl_http/src/curl/fixed_bindings.dart';
import 'package:curl_http/src/curl/libcurl.dart';
import 'package:curl_http/src/curl/utils.dart';
import 'package:ffi/ffi.dart';

abstract class Curl {
  /// API docs: https://curl.se/libcurl/c/curl_version.html
  static String get version => libcurl.curl_version().cast<Utf8>().toDartString();

  /// API docs: https://curl.se/libcurl/c/curl_version_info.html
  static CurlVersionInfo get versionInfo {
    final ref = libcurl.curl_version_info(CURLVERSION_NOW).ref;

    final isSecondOrHigher = ref.age >= CURLversion.CURLVERSION_SECOND;
    final isThirdOrHigher = ref.age >= CURLversion.CURLVERSION_THIRD;
    final isFourthOrHigher = ref.age >= CURLversion.CURLVERSION_FOURTH;
    final isFifthOrHigher = ref.age >= CURLversion.CURLVERSION_FIFTH;
    final isSixthOrHigher = ref.age >= CURLversion.CURLVERSION_SIXTH;
    final isSeventhOrHigher = ref.age >= CURLversion.CURLVERSION_SEVENTH;
    final isEightsOrHigher = ref.age >= CURLversion.CURLVERSION_EIGHTH;
    final isNinthOrHigher = ref.age >= CURLversion.CURLVERSION_NINTH;
    final isTenthOrHigher = ref.age >= CURLversion.CURLVERSION_TENTH;
    final isEleventhOrHigher = ref.age >= CURLversion.CURLVERSION_ELEVENTH;

    return CurlVersionInfo(
      age: ref.age,
      version: ref.version.cast<Utf8>().toDartString(),
      versionNumber: ref.version_num,
      host: ref.host.cast<Utf8>().toDartString(),
      features: ref.features,
      sslVersion: ref.ssl_version.cast<Utf8>().toDartString(),
      libzVersion: ref.libz_version.cast<Utf8>().toDartString(),
      protocols: ref.protocols.cast<Pointer<Utf8>>().toDartStringList(),
      ares: isSecondOrHigher ? ref.ares.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      aresNumber: isSecondOrHigher ? ref.ares_num : null,
      libidn: isThirdOrHigher ? ref.libidn.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      iconvVersionNumber: isFourthOrHigher ? ref.iconv_ver_num : null,
      libsshVersion: isFourthOrHigher ? ref.libssh_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      brotliVersionNumber: isFifthOrHigher ? ref.brotli_ver_num : null,
      brotliVersion: isFifthOrHigher ? ref.brotli_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      nghttp2VersionNumber: isSixthOrHigher ? ref.nghttp2_ver_num : null,
      nghttp2Version: isSixthOrHigher ? ref.nghttp2_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      quicVersion: isSixthOrHigher ? ref.quic_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      caInfo: isSeventhOrHigher ? ref.cainfo.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      caPath: isSeventhOrHigher ? ref.capath.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      zstdVersionNumber: isEightsOrHigher ? ref.zstd_ver_num : null,
      zstdVersion: isEightsOrHigher ? ref.zstd_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      hyperVersion: isNinthOrHigher ? ref.hyper_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      gsaslVersion: isTenthOrHigher ? ref.gsasl_version.nullIfNullptr?.cast<Utf8>().toDartString() : null,
      featureNames:
          isEleventhOrHigher ? ref.feature_names.nullIfNullptr?.cast<Pointer<Utf8>>().toDartStringList() : null,
    );
  }

  /// API docs: https://curl.se/libcurl/c/curl_global_init.html
  static void globalInit() {
    final result = libcurl.curl_global_init(CURL_GLOBAL_DEFAULT);
    CurlEasyException.throwIfNotOkResult(result);
  }

  static List<CurlSslBackend> get availableSslBackends {
    final availPtr = malloc<Pointer<Pointer<curl_ssl_backend>>>();
    try {
      final result = libcurl.curl_global_sslset(curl_sslbackend.CURLSSLBACKEND_NONE, nullptr, availPtr);
      if (result != CURLsslset.CURLSSLSET_UNKNOWN_BACKEND) {
        // throw
      }
      final avail = availPtr.value;
      assert(avail != nullptr);

      return avail.asNullTerminatedIterable().map((elementPtr) {
        final ref = elementPtr.ref;
        return CurlSslBackend(id: CurlSslBackendId.fromRawValue(ref.id), name: ref.name.cast<Utf8>().toDartString());
      }).toList(growable: false);
    } finally {
      malloc.free(availPtr);
    }
  }

  static set sslBackendId(CurlSslBackendId sslBackendId) {
    final result = libcurl.curl_global_sslset(sslBackendId.rawValue, nullptr, nullptr);
    if (result != CURLsslset.CURLSSLSET_OK) {
      // throw
      print(result);
    }
  }

  static set sslBackendName(String sslBackendName) {
    final sslBackendNamePtr = sslBackendName.toNativeUtf8();
    try {
      final result = libcurl.curl_global_sslset(-1, sslBackendNamePtr.cast(), nullptr);
      if (result != CURLsslset.CURLSSLSET_OK) {
        // throw
        print(result);
      }
    } finally {
      malloc.free(sslBackendNamePtr);
    }
  }
}
