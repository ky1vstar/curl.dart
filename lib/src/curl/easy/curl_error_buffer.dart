// ignore_for_file: avoid_private_typedef_functions

import 'dart:ffi';
import 'dart:typed_data';

import 'package:curl_http/src/curl/bindings.g.dart';
import 'package:curl_http/src/curl/curl_base.dart';
import 'package:ffi/ffi.dart';

final _stdlib = DynamicLibrary.process();

typedef _PosixCallocNative = Pointer Function(IntPtr num, IntPtr size);
typedef _PosixCalloc = Pointer Function(int num, int size);
final _posixCalloc = _stdlib.lookupFunction<_PosixCallocNative, _PosixCalloc>('calloc');

typedef _PosixFreeNative = Void Function(Pointer);
typedef _PosixFree = void Function(Pointer);
final _posixFreeNative = _stdlib.lookup<NativeFunction<_PosixFreeNative>>('free');
final _posixFree = _posixFreeNative.asFunction<_PosixFree>();

/// API docs: https://curl.se/libcurl/c/CURLOPT_ERRORBUFFER.html
class CurlErrorBuffer extends CurlHandle<Uint8> {
  factory CurlErrorBuffer() {
    return CurlErrorBuffer._(_posixCalloc(CURL_ERROR_SIZE, 1).cast());
  }

  CurlErrorBuffer._(super.handle) : super(finalizerCallback: _posixFreeNative, cleanupFunc: _posixFree);

  static const errorSize = CURL_ERROR_SIZE;

  Uint8List asBytesView() => handle.asTypedList(errorSize);

  @override
  String toString() {
    return handle.cast<Utf8>().toDartString();
  }
}
