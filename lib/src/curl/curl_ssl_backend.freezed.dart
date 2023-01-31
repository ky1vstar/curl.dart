// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curl_ssl_backend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurlSslBackend {
  CurlSslBackendId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurlSslBackendCopyWith<CurlSslBackend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlSslBackendCopyWith<$Res> {
  factory $CurlSslBackendCopyWith(
          CurlSslBackend value, $Res Function(CurlSslBackend) then) =
      _$CurlSslBackendCopyWithImpl<$Res, CurlSslBackend>;
  @useResult
  $Res call({CurlSslBackendId id, String name});
}

/// @nodoc
class _$CurlSslBackendCopyWithImpl<$Res, $Val extends CurlSslBackend>
    implements $CurlSslBackendCopyWith<$Res> {
  _$CurlSslBackendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CurlSslBackendId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurlSslBackendCopyWith<$Res>
    implements $CurlSslBackendCopyWith<$Res> {
  factory _$$_CurlSslBackendCopyWith(
          _$_CurlSslBackend value, $Res Function(_$_CurlSslBackend) then) =
      __$$_CurlSslBackendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurlSslBackendId id, String name});
}

/// @nodoc
class __$$_CurlSslBackendCopyWithImpl<$Res>
    extends _$CurlSslBackendCopyWithImpl<$Res, _$_CurlSslBackend>
    implements _$$_CurlSslBackendCopyWith<$Res> {
  __$$_CurlSslBackendCopyWithImpl(
      _$_CurlSslBackend _value, $Res Function(_$_CurlSslBackend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CurlSslBackend(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CurlSslBackendId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurlSslBackend implements _CurlSslBackend {
  const _$_CurlSslBackend({required this.id, required this.name});

  @override
  final CurlSslBackendId id;
  @override
  final String name;

  @override
  String toString() {
    return 'CurlSslBackend(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurlSslBackend &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurlSslBackendCopyWith<_$_CurlSslBackend> get copyWith =>
      __$$_CurlSslBackendCopyWithImpl<_$_CurlSslBackend>(this, _$identity);
}

abstract class _CurlSslBackend implements CurlSslBackend {
  const factory _CurlSslBackend(
      {required final CurlSslBackendId id,
      required final String name}) = _$_CurlSslBackend;

  @override
  CurlSslBackendId get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CurlSslBackendCopyWith<_$_CurlSslBackend> get copyWith =>
      throw _privateConstructorUsedError;
}
