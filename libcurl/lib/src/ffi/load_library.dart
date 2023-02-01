import 'dart:ffi';
import 'dart:io';

import 'package:libcurl/src/exceptions.dart';
import 'package:libcurl/src/ffi/libcurl.dart';
import 'package:meta/meta.dart';

/// Signature responsible for loading the dynamic curl library to use.
typedef OpenLibrary = DynamicLibrary Function();

/// The instance managing different approaches to load the [DynamicLibrary] for
/// curl when needed. See the documentation for [OpenDynamicLibrary] to learn
/// how the default opening behavior can be overridden.
final OpenDynamicLibrary open = OpenDynamicLibrary._();

DynamicLibrary _defaultOpen() {
  if (Platform.isMacOS) {
    return DynamicLibrary.open('/usr/lib/libcurl.dylib');
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('libcurl.dll');
  }

  throw UnsupportedError('Unsupported platform: ${Platform.operatingSystem}');
}

/// Manages functions that define how to load the [DynamicLibrary] for sqlite.
///
/// The default behavior will use `DynamicLibrary.open('libcurl.so')` on
/// Linux and Android, `DynamicLibrary.open('libcurl.dylib')` on iOS and
/// macOS and `DynamicLibrary.open('libcurl.dll')` on Windows.
///
/// The default behavior can be overridden by using [override].
class OpenDynamicLibrary {
  OpenLibrary? _overridden;

  OpenDynamicLibrary._();

  /// Opens the [DynamicLibrary] from which `moor_ffi` is going to
  /// [DynamicLibrary.lookup] sqlite's methods that will be used. This method is
  /// meant to be called by `moor_ffi` only.
  DynamicLibrary openCurl() {
    final forAll = _overridden;
    if (forAll != null) {
      return forAll();
    }

    return _defaultOpen();
  }

  /// Makes `libcurl` use the [OpenLibrary] function for all Dart platforms.
  /// This method must be called before using any cURL API.
  void override(OpenLibrary open) {
    if (libcurlLoaded) {
      throw const CurlException("`OpenLibrary` function cannot be overridden after library was loaded");
    }
    _overridden = open;
  }

  /// Clears all associated open helpers for all platforms.
  @visibleForTesting
  void reset() {
    _overridden = null;
  }
}
