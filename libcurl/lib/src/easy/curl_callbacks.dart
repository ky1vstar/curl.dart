import 'dart:ffi';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl_callbacks.freezed.dart';

typedef CurlReadWriteFunc<T> = T Function(Pointer<Char> buffer, int size, int nitems);
typedef TypedViewCurlReadWriteFunc<T> = T Function(Uint8List bytesView);
typedef CurlReadFunc = CurlReadWriteFunc<CurlReadFuncResult>;
typedef CurlWriteFunc = CurlReadWriteFunc<CurlWriteFuncResult>;
typedef CurlHeaderFunc = CurlReadWriteFunc<int>;
typedef CurlSeekFunc = CurlSeekFuncResult Function(int offset, CurlSeekOrigin origin);

CurlReadWriteFunc<T> typedViewIoCallback<T>(TypedViewCurlReadWriteFunc<T> func) {
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

enum CurlSeekFuncResult {
  ok,
  fail,
  cantSeek,
}

enum CurlSeekOrigin {
  set,
  current,
  end,
}
