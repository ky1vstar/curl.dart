import 'dart:ffi';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl_io_func.freezed.dart';

typedef CurlIoFunc<T> = T Function(Pointer<Char> buffer, int size, int nitems);
typedef TypedViewCurlIoFunc<T> = T Function(Uint8List bytesView);
typedef CurlReadFunc = CurlIoFunc<CurlReadFuncResult>;
typedef CurlWriteFunc = CurlIoFunc<CurlWriteFuncResult>;
typedef CurlHeaderFunc = CurlIoFunc<int>;

CurlIoFunc<T> typedViewIoCallback<T>(TypedViewCurlIoFunc<T> func) {
  return (buffer, size, nitems) => func(buffer.cast<Uint8>().asTypedList(size * nitems));
}

@freezed
class CurlReadFuncResult with _$CurlReadFuncResult {
  const factory CurlReadFuncResult.abort() = CurlReadFuncAbortResult;

  const factory CurlReadFuncResult.pause() = CurlReadFuncPauseResult;

  const factory CurlReadFuncResult.bytesRead(int bytesRead) = CurlReadFuncBytesReadResult;
}

@freezed
class CurlWriteFuncResult with _$CurlWriteFuncResult {
  const factory CurlWriteFuncResult.error() = CurlWriteFuncErrorResult;

  const factory CurlWriteFuncResult.pause() = CurlWriteFuncPauseResult;

  const factory CurlWriteFuncResult.bytesWritten(int bytesWritten) = CurlWriteFuncBytesWrittenResult;
}
