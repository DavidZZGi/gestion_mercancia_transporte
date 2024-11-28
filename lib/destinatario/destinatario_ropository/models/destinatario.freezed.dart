// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destinatario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Destinatario _$DestinatarioFromJson(Map<String, dynamic> json) {
  return _Destinatario.fromJson(json);
}

/// @nodoc
mixin _$Destinatario {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinatarioCopyWith<Destinatario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinatarioCopyWith<$Res> {
  factory $DestinatarioCopyWith(
          Destinatario value, $Res Function(Destinatario) then) =
      _$DestinatarioCopyWithImpl<$Res, Destinatario>;
  @useResult
  $Res call({int id, String name, String address, String phone});
}

/// @nodoc
class _$DestinatarioCopyWithImpl<$Res, $Val extends Destinatario>
    implements $DestinatarioCopyWith<$Res> {
  _$DestinatarioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinatarioImplCopyWith<$Res>
    implements $DestinatarioCopyWith<$Res> {
  factory _$$DestinatarioImplCopyWith(
          _$DestinatarioImpl value, $Res Function(_$DestinatarioImpl) then) =
      __$$DestinatarioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String address, String phone});
}

/// @nodoc
class __$$DestinatarioImplCopyWithImpl<$Res>
    extends _$DestinatarioCopyWithImpl<$Res, _$DestinatarioImpl>
    implements _$$DestinatarioImplCopyWith<$Res> {
  __$$DestinatarioImplCopyWithImpl(
      _$DestinatarioImpl _value, $Res Function(_$DestinatarioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phone = null,
  }) {
    return _then(_$DestinatarioImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinatarioImpl implements _Destinatario {
  const _$DestinatarioImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone});

  factory _$DestinatarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinatarioImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;

  @override
  String toString() {
    return 'Destinatario(id: $id, name: $name, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinatarioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinatarioImplCopyWith<_$DestinatarioImpl> get copyWith =>
      __$$DestinatarioImplCopyWithImpl<_$DestinatarioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinatarioImplToJson(
      this,
    );
  }
}

abstract class _Destinatario implements Destinatario {
  const factory _Destinatario(
      {required final int id,
      required final String name,
      required final String address,
      required final String phone}) = _$DestinatarioImpl;

  factory _Destinatario.fromJson(Map<String, dynamic> json) =
      _$DestinatarioImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$DestinatarioImplCopyWith<_$DestinatarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
