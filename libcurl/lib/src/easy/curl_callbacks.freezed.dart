// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curl_callbacks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurlReadFuncResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() abort,
    required TResult Function() pause,
    required TResult Function(int bytesRead) bytesRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? abort,
    TResult? Function()? pause,
    TResult? Function(int bytesRead)? bytesRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? abort,
    TResult Function()? pause,
    TResult Function(int bytesRead)? bytesRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlReadFuncAbortResult value) abort,
    required TResult Function(CurlReadFuncPauseResult value) pause,
    required TResult Function(CurlReadFuncBytesReadResult value) bytesRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlReadFuncAbortResult value)? abort,
    TResult? Function(CurlReadFuncPauseResult value)? pause,
    TResult? Function(CurlReadFuncBytesReadResult value)? bytesRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlReadFuncAbortResult value)? abort,
    TResult Function(CurlReadFuncPauseResult value)? pause,
    TResult Function(CurlReadFuncBytesReadResult value)? bytesRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlReadFuncResultCopyWith<$Res> {
  factory $CurlReadFuncResultCopyWith(
          CurlReadFuncResult value, $Res Function(CurlReadFuncResult) then) =
      _$CurlReadFuncResultCopyWithImpl<$Res, CurlReadFuncResult>;
}

/// @nodoc
class _$CurlReadFuncResultCopyWithImpl<$Res, $Val extends CurlReadFuncResult>
    implements $CurlReadFuncResultCopyWith<$Res> {
  _$CurlReadFuncResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurlReadFuncAbortResultCopyWith<$Res> {
  factory _$$CurlReadFuncAbortResultCopyWith(_$CurlReadFuncAbortResult value,
          $Res Function(_$CurlReadFuncAbortResult) then) =
      __$$CurlReadFuncAbortResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurlReadFuncAbortResultCopyWithImpl<$Res>
    extends _$CurlReadFuncResultCopyWithImpl<$Res, _$CurlReadFuncAbortResult>
    implements _$$CurlReadFuncAbortResultCopyWith<$Res> {
  __$$CurlReadFuncAbortResultCopyWithImpl(_$CurlReadFuncAbortResult _value,
      $Res Function(_$CurlReadFuncAbortResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurlReadFuncAbortResult implements CurlReadFuncAbortResult {
  const _$CurlReadFuncAbortResult();

  @override
  String toString() {
    return 'CurlReadFuncResult.abort()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlReadFuncAbortResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() abort,
    required TResult Function() pause,
    required TResult Function(int bytesRead) bytesRead,
  }) {
    return abort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? abort,
    TResult? Function()? pause,
    TResult? Function(int bytesRead)? bytesRead,
  }) {
    return abort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? abort,
    TResult Function()? pause,
    TResult Function(int bytesRead)? bytesRead,
    required TResult orElse(),
  }) {
    if (abort != null) {
      return abort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlReadFuncAbortResult value) abort,
    required TResult Function(CurlReadFuncPauseResult value) pause,
    required TResult Function(CurlReadFuncBytesReadResult value) bytesRead,
  }) {
    return abort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlReadFuncAbortResult value)? abort,
    TResult? Function(CurlReadFuncPauseResult value)? pause,
    TResult? Function(CurlReadFuncBytesReadResult value)? bytesRead,
  }) {
    return abort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlReadFuncAbortResult value)? abort,
    TResult Function(CurlReadFuncPauseResult value)? pause,
    TResult Function(CurlReadFuncBytesReadResult value)? bytesRead,
    required TResult orElse(),
  }) {
    if (abort != null) {
      return abort(this);
    }
    return orElse();
  }
}

abstract class CurlReadFuncAbortResult implements CurlReadFuncResult {
  const factory CurlReadFuncAbortResult() = _$CurlReadFuncAbortResult;
}

/// @nodoc
abstract class _$$CurlReadFuncPauseResultCopyWith<$Res> {
  factory _$$CurlReadFuncPauseResultCopyWith(_$CurlReadFuncPauseResult value,
          $Res Function(_$CurlReadFuncPauseResult) then) =
      __$$CurlReadFuncPauseResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurlReadFuncPauseResultCopyWithImpl<$Res>
    extends _$CurlReadFuncResultCopyWithImpl<$Res, _$CurlReadFuncPauseResult>
    implements _$$CurlReadFuncPauseResultCopyWith<$Res> {
  __$$CurlReadFuncPauseResultCopyWithImpl(_$CurlReadFuncPauseResult _value,
      $Res Function(_$CurlReadFuncPauseResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurlReadFuncPauseResult implements CurlReadFuncPauseResult {
  const _$CurlReadFuncPauseResult();

  @override
  String toString() {
    return 'CurlReadFuncResult.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlReadFuncPauseResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() abort,
    required TResult Function() pause,
    required TResult Function(int bytesRead) bytesRead,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? abort,
    TResult? Function()? pause,
    TResult? Function(int bytesRead)? bytesRead,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? abort,
    TResult Function()? pause,
    TResult Function(int bytesRead)? bytesRead,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlReadFuncAbortResult value) abort,
    required TResult Function(CurlReadFuncPauseResult value) pause,
    required TResult Function(CurlReadFuncBytesReadResult value) bytesRead,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlReadFuncAbortResult value)? abort,
    TResult? Function(CurlReadFuncPauseResult value)? pause,
    TResult? Function(CurlReadFuncBytesReadResult value)? bytesRead,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlReadFuncAbortResult value)? abort,
    TResult Function(CurlReadFuncPauseResult value)? pause,
    TResult Function(CurlReadFuncBytesReadResult value)? bytesRead,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class CurlReadFuncPauseResult implements CurlReadFuncResult {
  const factory CurlReadFuncPauseResult() = _$CurlReadFuncPauseResult;
}

/// @nodoc
abstract class _$$CurlReadFuncBytesReadResultCopyWith<$Res> {
  factory _$$CurlReadFuncBytesReadResultCopyWith(
          _$CurlReadFuncBytesReadResult value,
          $Res Function(_$CurlReadFuncBytesReadResult) then) =
      __$$CurlReadFuncBytesReadResultCopyWithImpl<$Res>;
  @useResult
  $Res call({int bytesRead});
}

/// @nodoc
class __$$CurlReadFuncBytesReadResultCopyWithImpl<$Res>
    extends _$CurlReadFuncResultCopyWithImpl<$Res,
        _$CurlReadFuncBytesReadResult>
    implements _$$CurlReadFuncBytesReadResultCopyWith<$Res> {
  __$$CurlReadFuncBytesReadResultCopyWithImpl(
      _$CurlReadFuncBytesReadResult _value,
      $Res Function(_$CurlReadFuncBytesReadResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesRead = null,
  }) {
    return _then(_$CurlReadFuncBytesReadResult(
      null == bytesRead
          ? _value.bytesRead
          : bytesRead // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurlReadFuncBytesReadResult implements CurlReadFuncBytesReadResult {
  const _$CurlReadFuncBytesReadResult(this.bytesRead);

  @override
  final int bytesRead;

  @override
  String toString() {
    return 'CurlReadFuncResult.bytesRead(bytesRead: $bytesRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlReadFuncBytesReadResult &&
            (identical(other.bytesRead, bytesRead) ||
                other.bytesRead == bytesRead));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytesRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurlReadFuncBytesReadResultCopyWith<_$CurlReadFuncBytesReadResult>
      get copyWith => __$$CurlReadFuncBytesReadResultCopyWithImpl<
          _$CurlReadFuncBytesReadResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() abort,
    required TResult Function() pause,
    required TResult Function(int bytesRead) bytesRead,
  }) {
    return bytesRead(this.bytesRead);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? abort,
    TResult? Function()? pause,
    TResult? Function(int bytesRead)? bytesRead,
  }) {
    return bytesRead?.call(this.bytesRead);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? abort,
    TResult Function()? pause,
    TResult Function(int bytesRead)? bytesRead,
    required TResult orElse(),
  }) {
    if (bytesRead != null) {
      return bytesRead(this.bytesRead);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlReadFuncAbortResult value) abort,
    required TResult Function(CurlReadFuncPauseResult value) pause,
    required TResult Function(CurlReadFuncBytesReadResult value) bytesRead,
  }) {
    return bytesRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlReadFuncAbortResult value)? abort,
    TResult? Function(CurlReadFuncPauseResult value)? pause,
    TResult? Function(CurlReadFuncBytesReadResult value)? bytesRead,
  }) {
    return bytesRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlReadFuncAbortResult value)? abort,
    TResult Function(CurlReadFuncPauseResult value)? pause,
    TResult Function(CurlReadFuncBytesReadResult value)? bytesRead,
    required TResult orElse(),
  }) {
    if (bytesRead != null) {
      return bytesRead(this);
    }
    return orElse();
  }
}

abstract class CurlReadFuncBytesReadResult implements CurlReadFuncResult {
  const factory CurlReadFuncBytesReadResult(final int bytesRead) =
      _$CurlReadFuncBytesReadResult;

  int get bytesRead;
  @JsonKey(ignore: true)
  _$$CurlReadFuncBytesReadResultCopyWith<_$CurlReadFuncBytesReadResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurlWriteFuncResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() pause,
    required TResult Function(int bytesWritten) bytesWritten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? pause,
    TResult? Function(int bytesWritten)? bytesWritten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? pause,
    TResult Function(int bytesWritten)? bytesWritten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlWriteFuncErrorResult value) error,
    required TResult Function(CurlWriteFuncPauseResult value) pause,
    required TResult Function(CurlWriteFuncBytesWrittenResult value)
        bytesWritten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlWriteFuncErrorResult value)? error,
    TResult? Function(CurlWriteFuncPauseResult value)? pause,
    TResult? Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlWriteFuncErrorResult value)? error,
    TResult Function(CurlWriteFuncPauseResult value)? pause,
    TResult Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlWriteFuncResultCopyWith<$Res> {
  factory $CurlWriteFuncResultCopyWith(
          CurlWriteFuncResult value, $Res Function(CurlWriteFuncResult) then) =
      _$CurlWriteFuncResultCopyWithImpl<$Res, CurlWriteFuncResult>;
}

/// @nodoc
class _$CurlWriteFuncResultCopyWithImpl<$Res, $Val extends CurlWriteFuncResult>
    implements $CurlWriteFuncResultCopyWith<$Res> {
  _$CurlWriteFuncResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurlWriteFuncErrorResultCopyWith<$Res> {
  factory _$$CurlWriteFuncErrorResultCopyWith(_$CurlWriteFuncErrorResult value,
          $Res Function(_$CurlWriteFuncErrorResult) then) =
      __$$CurlWriteFuncErrorResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurlWriteFuncErrorResultCopyWithImpl<$Res>
    extends _$CurlWriteFuncResultCopyWithImpl<$Res, _$CurlWriteFuncErrorResult>
    implements _$$CurlWriteFuncErrorResultCopyWith<$Res> {
  __$$CurlWriteFuncErrorResultCopyWithImpl(_$CurlWriteFuncErrorResult _value,
      $Res Function(_$CurlWriteFuncErrorResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurlWriteFuncErrorResult implements CurlWriteFuncErrorResult {
  const _$CurlWriteFuncErrorResult();

  @override
  String toString() {
    return 'CurlWriteFuncResult.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlWriteFuncErrorResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() pause,
    required TResult Function(int bytesWritten) bytesWritten,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? pause,
    TResult? Function(int bytesWritten)? bytesWritten,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? pause,
    TResult Function(int bytesWritten)? bytesWritten,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlWriteFuncErrorResult value) error,
    required TResult Function(CurlWriteFuncPauseResult value) pause,
    required TResult Function(CurlWriteFuncBytesWrittenResult value)
        bytesWritten,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlWriteFuncErrorResult value)? error,
    TResult? Function(CurlWriteFuncPauseResult value)? pause,
    TResult? Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlWriteFuncErrorResult value)? error,
    TResult Function(CurlWriteFuncPauseResult value)? pause,
    TResult Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurlWriteFuncErrorResult implements CurlWriteFuncResult {
  const factory CurlWriteFuncErrorResult() = _$CurlWriteFuncErrorResult;
}

/// @nodoc
abstract class _$$CurlWriteFuncPauseResultCopyWith<$Res> {
  factory _$$CurlWriteFuncPauseResultCopyWith(_$CurlWriteFuncPauseResult value,
          $Res Function(_$CurlWriteFuncPauseResult) then) =
      __$$CurlWriteFuncPauseResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurlWriteFuncPauseResultCopyWithImpl<$Res>
    extends _$CurlWriteFuncResultCopyWithImpl<$Res, _$CurlWriteFuncPauseResult>
    implements _$$CurlWriteFuncPauseResultCopyWith<$Res> {
  __$$CurlWriteFuncPauseResultCopyWithImpl(_$CurlWriteFuncPauseResult _value,
      $Res Function(_$CurlWriteFuncPauseResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurlWriteFuncPauseResult implements CurlWriteFuncPauseResult {
  const _$CurlWriteFuncPauseResult();

  @override
  String toString() {
    return 'CurlWriteFuncResult.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlWriteFuncPauseResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() pause,
    required TResult Function(int bytesWritten) bytesWritten,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? pause,
    TResult? Function(int bytesWritten)? bytesWritten,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? pause,
    TResult Function(int bytesWritten)? bytesWritten,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlWriteFuncErrorResult value) error,
    required TResult Function(CurlWriteFuncPauseResult value) pause,
    required TResult Function(CurlWriteFuncBytesWrittenResult value)
        bytesWritten,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlWriteFuncErrorResult value)? error,
    TResult? Function(CurlWriteFuncPauseResult value)? pause,
    TResult? Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlWriteFuncErrorResult value)? error,
    TResult Function(CurlWriteFuncPauseResult value)? pause,
    TResult Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class CurlWriteFuncPauseResult implements CurlWriteFuncResult {
  const factory CurlWriteFuncPauseResult() = _$CurlWriteFuncPauseResult;
}

/// @nodoc
abstract class _$$CurlWriteFuncBytesWrittenResultCopyWith<$Res> {
  factory _$$CurlWriteFuncBytesWrittenResultCopyWith(
          _$CurlWriteFuncBytesWrittenResult value,
          $Res Function(_$CurlWriteFuncBytesWrittenResult) then) =
      __$$CurlWriteFuncBytesWrittenResultCopyWithImpl<$Res>;
  @useResult
  $Res call({int bytesWritten});
}

/// @nodoc
class __$$CurlWriteFuncBytesWrittenResultCopyWithImpl<$Res>
    extends _$CurlWriteFuncResultCopyWithImpl<$Res,
        _$CurlWriteFuncBytesWrittenResult>
    implements _$$CurlWriteFuncBytesWrittenResultCopyWith<$Res> {
  __$$CurlWriteFuncBytesWrittenResultCopyWithImpl(
      _$CurlWriteFuncBytesWrittenResult _value,
      $Res Function(_$CurlWriteFuncBytesWrittenResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytesWritten = null,
  }) {
    return _then(_$CurlWriteFuncBytesWrittenResult(
      null == bytesWritten
          ? _value.bytesWritten
          : bytesWritten // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurlWriteFuncBytesWrittenResult
    implements CurlWriteFuncBytesWrittenResult {
  const _$CurlWriteFuncBytesWrittenResult(this.bytesWritten);

  @override
  final int bytesWritten;

  @override
  String toString() {
    return 'CurlWriteFuncResult.bytesWritten(bytesWritten: $bytesWritten)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlWriteFuncBytesWrittenResult &&
            (identical(other.bytesWritten, bytesWritten) ||
                other.bytesWritten == bytesWritten));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytesWritten);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurlWriteFuncBytesWrittenResultCopyWith<_$CurlWriteFuncBytesWrittenResult>
      get copyWith => __$$CurlWriteFuncBytesWrittenResultCopyWithImpl<
          _$CurlWriteFuncBytesWrittenResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() pause,
    required TResult Function(int bytesWritten) bytesWritten,
  }) {
    return bytesWritten(this.bytesWritten);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? pause,
    TResult? Function(int bytesWritten)? bytesWritten,
  }) {
    return bytesWritten?.call(this.bytesWritten);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? pause,
    TResult Function(int bytesWritten)? bytesWritten,
    required TResult orElse(),
  }) {
    if (bytesWritten != null) {
      return bytesWritten(this.bytesWritten);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlWriteFuncErrorResult value) error,
    required TResult Function(CurlWriteFuncPauseResult value) pause,
    required TResult Function(CurlWriteFuncBytesWrittenResult value)
        bytesWritten,
  }) {
    return bytesWritten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlWriteFuncErrorResult value)? error,
    TResult? Function(CurlWriteFuncPauseResult value)? pause,
    TResult? Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
  }) {
    return bytesWritten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlWriteFuncErrorResult value)? error,
    TResult Function(CurlWriteFuncPauseResult value)? pause,
    TResult Function(CurlWriteFuncBytesWrittenResult value)? bytesWritten,
    required TResult orElse(),
  }) {
    if (bytesWritten != null) {
      return bytesWritten(this);
    }
    return orElse();
  }
}

abstract class CurlWriteFuncBytesWrittenResult implements CurlWriteFuncResult {
  const factory CurlWriteFuncBytesWrittenResult(final int bytesWritten) =
      _$CurlWriteFuncBytesWrittenResult;

  int get bytesWritten;
  @JsonKey(ignore: true)
  _$$CurlWriteFuncBytesWrittenResultCopyWith<_$CurlWriteFuncBytesWrittenResult>
      get copyWith => throw _privateConstructorUsedError;
}
