// ignore_for_file: non_constant_identifier_names

import 'dart:ffi' as ffi;

import 'package:libcurl/src/ffi/bindings.g.dart';

// ignore: constant_identifier_names
const CURLVERSION_NOW = CURLversion.CURLVERSION_ELEVENTH;

extension FixedBindings on Bindings {
  int curl_easy_setopt_int(ffi.Pointer<CURL> curl, int option, int parameter) {
    return _setoptIntFunc(addresses.$curl_easy_setopt)(curl, option, parameter);
  }

  int curl_easy_setopt_off(ffi.Pointer<CURL> curl, int option, int parameter) {
    return _setoptOffFunc(addresses.$curl_easy_setopt)(curl, option, parameter);
  }

  int curl_easy_setopt_ptr(ffi.Pointer<CURL> curl, int option, ffi.Pointer<ffi.Void> parameter) {
    return _setoptPtrFunc(addresses.$curl_easy_setopt)(curl, option, parameter);
  }

  int curl_easy_getinfo(ffi.Pointer<CURL> curl, int info, ffi.Pointer<ffi.Void> arg) {
    final func = addresses.$curl_easy_getinfo
        .cast<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<CURL>, ffi.Int32, ffi.Pointer<ffi.Void>)>>()
        .asFunction<int Function(ffi.Pointer<CURL>, int, ffi.Pointer<ffi.Void>)>();
    return func(curl, info, arg);
  }

  int curl_multi_setopt_int(ffi.Pointer<CURLM> curl, int option, int parameter) {
    return _setoptIntFunc(addresses.$curl_multi_setopt)(curl, option, parameter);
  }

  int curl_multi_setopt_off(ffi.Pointer<CURLM> curl, int option, int parameter) {
    return _setoptOffFunc(addresses.$curl_multi_setopt)(curl, option, parameter);
  }

  int curl_multi_setopt_ptr(ffi.Pointer<CURLM> curl, int option, ffi.Pointer<ffi.Void> parameter) {
    return _setoptPtrFunc(addresses.$curl_multi_setopt)(curl, option, parameter);
  }

  int Function(ffi.Pointer<ffi.Void>, int, int) _setoptIntFunc<T extends ffi.NativeFunction>(ffi.Pointer<T> pointer) {
    return pointer
        .cast<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Int)>>()
        .asFunction<int Function(ffi.Pointer<ffi.Void>, int, int)>();
  }

  int Function(ffi.Pointer<ffi.Void>, int, int) _setoptOffFunc<T extends ffi.NativeFunction>(ffi.Pointer<T> pointer) {
    return pointer
        .cast<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Int64)>>()
        .asFunction<int Function(ffi.Pointer<ffi.Void>, int, int)>();
  }

  int Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Void>) _setoptPtrFunc<T extends ffi.NativeFunction>(
    ffi.Pointer<T> pointer,
  ) {
    return pointer
        .cast<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Pointer<ffi.Void>)>>()
        .asFunction<int Function(ffi.Pointer<ffi.Void>, int, ffi.Pointer<ffi.Void>)>();
  }
}
