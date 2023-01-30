// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curl_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurlMsg {
  CurlEasy get easyHandle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurlEasy easyHandle) inProgress,
    required TResult Function(CurlEasy easyHandle, CurlEasyCode result) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurlEasy easyHandle)? inProgress,
    TResult? Function(CurlEasy easyHandle, CurlEasyCode result)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurlEasy easyHandle)? inProgress,
    TResult Function(CurlEasy easyHandle, CurlEasyCode result)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlInProgressMsg value) inProgress,
    required TResult Function(CurlDoneMsg value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlInProgressMsg value)? inProgress,
    TResult? Function(CurlDoneMsg value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlInProgressMsg value)? inProgress,
    TResult Function(CurlDoneMsg value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurlMsgCopyWith<CurlMsg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlMsgCopyWith<$Res> {
  factory $CurlMsgCopyWith(CurlMsg value, $Res Function(CurlMsg) then) =
      _$CurlMsgCopyWithImpl<$Res, CurlMsg>;
  @useResult
  $Res call({CurlEasy easyHandle});
}

/// @nodoc
class _$CurlMsgCopyWithImpl<$Res, $Val extends CurlMsg>
    implements $CurlMsgCopyWith<$Res> {
  _$CurlMsgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? easyHandle = null,
  }) {
    return _then(_value.copyWith(
      easyHandle: null == easyHandle
          ? _value.easyHandle
          : easyHandle // ignore: cast_nullable_to_non_nullable
              as CurlEasy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurlInProgressMsgCopyWith<$Res>
    implements $CurlMsgCopyWith<$Res> {
  factory _$$CurlInProgressMsgCopyWith(
          _$CurlInProgressMsg value, $Res Function(_$CurlInProgressMsg) then) =
      __$$CurlInProgressMsgCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurlEasy easyHandle});
}

/// @nodoc
class __$$CurlInProgressMsgCopyWithImpl<$Res>
    extends _$CurlMsgCopyWithImpl<$Res, _$CurlInProgressMsg>
    implements _$$CurlInProgressMsgCopyWith<$Res> {
  __$$CurlInProgressMsgCopyWithImpl(
      _$CurlInProgressMsg _value, $Res Function(_$CurlInProgressMsg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? easyHandle = null,
  }) {
    return _then(_$CurlInProgressMsg(
      null == easyHandle
          ? _value.easyHandle
          : easyHandle // ignore: cast_nullable_to_non_nullable
              as CurlEasy,
    ));
  }
}

/// @nodoc

class _$CurlInProgressMsg extends CurlInProgressMsg {
  const _$CurlInProgressMsg(this.easyHandle) : super._();

  @override
  final CurlEasy easyHandle;

  @override
  String toString() {
    return 'CurlMsg.inProgress(easyHandle: $easyHandle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlInProgressMsg &&
            (identical(other.easyHandle, easyHandle) ||
                other.easyHandle == easyHandle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, easyHandle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurlInProgressMsgCopyWith<_$CurlInProgressMsg> get copyWith =>
      __$$CurlInProgressMsgCopyWithImpl<_$CurlInProgressMsg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurlEasy easyHandle) inProgress,
    required TResult Function(CurlEasy easyHandle, CurlEasyCode result) done,
  }) {
    return inProgress(easyHandle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurlEasy easyHandle)? inProgress,
    TResult? Function(CurlEasy easyHandle, CurlEasyCode result)? done,
  }) {
    return inProgress?.call(easyHandle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurlEasy easyHandle)? inProgress,
    TResult Function(CurlEasy easyHandle, CurlEasyCode result)? done,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(easyHandle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlInProgressMsg value) inProgress,
    required TResult Function(CurlDoneMsg value) done,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlInProgressMsg value)? inProgress,
    TResult? Function(CurlDoneMsg value)? done,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlInProgressMsg value)? inProgress,
    TResult Function(CurlDoneMsg value)? done,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class CurlInProgressMsg extends CurlMsg {
  const factory CurlInProgressMsg(final CurlEasy easyHandle) =
      _$CurlInProgressMsg;
  const CurlInProgressMsg._() : super._();

  @override
  CurlEasy get easyHandle;
  @override
  @JsonKey(ignore: true)
  _$$CurlInProgressMsgCopyWith<_$CurlInProgressMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurlDoneMsgCopyWith<$Res> implements $CurlMsgCopyWith<$Res> {
  factory _$$CurlDoneMsgCopyWith(
          _$CurlDoneMsg value, $Res Function(_$CurlDoneMsg) then) =
      __$$CurlDoneMsgCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurlEasy easyHandle, CurlEasyCode result});
}

/// @nodoc
class __$$CurlDoneMsgCopyWithImpl<$Res>
    extends _$CurlMsgCopyWithImpl<$Res, _$CurlDoneMsg>
    implements _$$CurlDoneMsgCopyWith<$Res> {
  __$$CurlDoneMsgCopyWithImpl(
      _$CurlDoneMsg _value, $Res Function(_$CurlDoneMsg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? easyHandle = null,
    Object? result = null,
  }) {
    return _then(_$CurlDoneMsg(
      null == easyHandle
          ? _value.easyHandle
          : easyHandle // ignore: cast_nullable_to_non_nullable
              as CurlEasy,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CurlEasyCode,
    ));
  }
}

/// @nodoc

class _$CurlDoneMsg extends CurlDoneMsg {
  const _$CurlDoneMsg(this.easyHandle, this.result) : super._();

  @override
  final CurlEasy easyHandle;
  @override
  final CurlEasyCode result;

  @override
  String toString() {
    return 'CurlMsg.done(easyHandle: $easyHandle, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurlDoneMsg &&
            (identical(other.easyHandle, easyHandle) ||
                other.easyHandle == easyHandle) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, easyHandle, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurlDoneMsgCopyWith<_$CurlDoneMsg> get copyWith =>
      __$$CurlDoneMsgCopyWithImpl<_$CurlDoneMsg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurlEasy easyHandle) inProgress,
    required TResult Function(CurlEasy easyHandle, CurlEasyCode result) done,
  }) {
    return done(easyHandle, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurlEasy easyHandle)? inProgress,
    TResult? Function(CurlEasy easyHandle, CurlEasyCode result)? done,
  }) {
    return done?.call(easyHandle, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurlEasy easyHandle)? inProgress,
    TResult Function(CurlEasy easyHandle, CurlEasyCode result)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(easyHandle, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurlInProgressMsg value) inProgress,
    required TResult Function(CurlDoneMsg value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurlInProgressMsg value)? inProgress,
    TResult? Function(CurlDoneMsg value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurlInProgressMsg value)? inProgress,
    TResult Function(CurlDoneMsg value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class CurlDoneMsg extends CurlMsg {
  const factory CurlDoneMsg(
      final CurlEasy easyHandle, final CurlEasyCode result) = _$CurlDoneMsg;
  const CurlDoneMsg._() : super._();

  @override
  CurlEasy get easyHandle;
  CurlEasyCode get result;
  @override
  @JsonKey(ignore: true)
  _$$CurlDoneMsgCopyWith<_$CurlDoneMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
