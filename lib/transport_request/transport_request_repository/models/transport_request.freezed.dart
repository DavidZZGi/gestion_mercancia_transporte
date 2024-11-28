// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransportRequest _$TransportRequestFromJson(Map<String, dynamic> json) {
  return _TransportRequest.fromJson(json);
}

/// @nodoc
mixin _$TransportRequest {
  int get id => throw _privateConstructorUsedError; // ID único de la solicitud
  String get destinationName =>
      throw _privateConstructorUsedError; // Nombre del destinatario
  RequestStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportRequestCopyWith<TransportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportRequestCopyWith<$Res> {
  factory $TransportRequestCopyWith(
          TransportRequest value, $Res Function(TransportRequest) then) =
      _$TransportRequestCopyWithImpl<$Res, TransportRequest>;
  @useResult
  $Res call({int id, String destinationName, RequestStatus status});
}

/// @nodoc
class _$TransportRequestCopyWithImpl<$Res, $Val extends TransportRequest>
    implements $TransportRequestCopyWith<$Res> {
  _$TransportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destinationName = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      destinationName: null == destinationName
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportRequestImplCopyWith<$Res>
    implements $TransportRequestCopyWith<$Res> {
  factory _$$TransportRequestImplCopyWith(_$TransportRequestImpl value,
          $Res Function(_$TransportRequestImpl) then) =
      __$$TransportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String destinationName, RequestStatus status});
}

/// @nodoc
class __$$TransportRequestImplCopyWithImpl<$Res>
    extends _$TransportRequestCopyWithImpl<$Res, _$TransportRequestImpl>
    implements _$$TransportRequestImplCopyWith<$Res> {
  __$$TransportRequestImplCopyWithImpl(_$TransportRequestImpl _value,
      $Res Function(_$TransportRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? destinationName = null,
    Object? status = null,
  }) {
    return _then(_$TransportRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      destinationName: null == destinationName
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportRequestImpl implements _TransportRequest {
  const _$TransportRequestImpl(
      {required this.id, required this.destinationName, required this.status});

  factory _$TransportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportRequestImplFromJson(json);

  @override
  final int id;
// ID único de la solicitud
  @override
  final String destinationName;
// Nombre del destinatario
  @override
  final RequestStatus status;

  @override
  String toString() {
    return 'TransportRequest(id: $id, destinationName: $destinationName, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.destinationName, destinationName) ||
                other.destinationName == destinationName) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, destinationName, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportRequestImplCopyWith<_$TransportRequestImpl> get copyWith =>
      __$$TransportRequestImplCopyWithImpl<_$TransportRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportRequestImplToJson(
      this,
    );
  }
}

abstract class _TransportRequest implements TransportRequest {
  const factory _TransportRequest(
      {required final int id,
      required final String destinationName,
      required final RequestStatus status}) = _$TransportRequestImpl;

  factory _TransportRequest.fromJson(Map<String, dynamic> json) =
      _$TransportRequestImpl.fromJson;

  @override
  int get id;
  @override // ID único de la solicitud
  String get destinationName;
  @override // Nombre del destinatario
  RequestStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$TransportRequestImplCopyWith<_$TransportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
