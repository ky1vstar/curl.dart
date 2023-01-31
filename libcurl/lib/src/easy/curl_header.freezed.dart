// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curl_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurlHeader {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  CurlHeaderOrigin get origin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurlHeaderCopyWith<CurlHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlHeaderCopyWith<$Res> {
  factory $CurlHeaderCopyWith(
          CurlHeader value, $Res Function(CurlHeader) then) =
      _$CurlHeaderCopyWithImpl<$Res, CurlHeader>;
  @useResult
  $Res call(
      {String name,
      String value,
      int amount,
      int index,
      CurlHeaderOrigin origin});
}

/// @nodoc
class _$CurlHeaderCopyWithImpl<$Res, $Val extends CurlHeader>
    implements $CurlHeaderCopyWith<$Res> {
  _$CurlHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? amount = null,
    Object? index = null,
    Object? origin = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CurlHeaderOrigin,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurlHeaderCopyWith<$Res>
    implements $CurlHeaderCopyWith<$Res> {
  factory _$$_CurlHeaderCopyWith(
          _$_CurlHeader value, $Res Function(_$_CurlHeader) then) =
      __$$_CurlHeaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String value,
      int amount,
      int index,
      CurlHeaderOrigin origin});
}

/// @nodoc
class __$$_CurlHeaderCopyWithImpl<$Res>
    extends _$CurlHeaderCopyWithImpl<$Res, _$_CurlHeader>
    implements _$$_CurlHeaderCopyWith<$Res> {
  __$$_CurlHeaderCopyWithImpl(
      _$_CurlHeader _value, $Res Function(_$_CurlHeader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? amount = null,
    Object? index = null,
    Object? origin = null,
  }) {
    return _then(_$_CurlHeader(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CurlHeaderOrigin,
    ));
  }
}

/// @nodoc

class _$_CurlHeader implements _CurlHeader {
  const _$_CurlHeader(
      {required this.name,
      required this.value,
      required this.amount,
      required this.index,
      required this.origin});

  @override
  final String name;
  @override
  final String value;
  @override
  final int amount;
  @override
  final int index;
  @override
  final CurlHeaderOrigin origin;

  @override
  String toString() {
    return 'CurlHeader(name: $name, value: $value, amount: $amount, index: $index, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurlHeader &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.origin, origin) || other.origin == origin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, value, amount, index, origin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurlHeaderCopyWith<_$_CurlHeader> get copyWith =>
      __$$_CurlHeaderCopyWithImpl<_$_CurlHeader>(this, _$identity);
}

abstract class _CurlHeader implements CurlHeader {
  const factory _CurlHeader(
      {required final String name,
      required final String value,
      required final int amount,
      required final int index,
      required final CurlHeaderOrigin origin}) = _$_CurlHeader;

  @override
  String get name;
  @override
  String get value;
  @override
  int get amount;
  @override
  int get index;
  @override
  CurlHeaderOrigin get origin;
  @override
  @JsonKey(ignore: true)
  _$$_CurlHeaderCopyWith<_$_CurlHeader> get copyWith =>
      throw _privateConstructorUsedError;
}
