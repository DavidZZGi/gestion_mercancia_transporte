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
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get recipientId => throw _privateConstructorUsedError;
  RequestStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Fecha de creación para tracking
  String? get notes => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      int userId,
      int recipientId,
      RequestStatus status,
      DateTime createdAt,
      String? notes});
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
    Object? id = freezed,
    Object? userId = null,
    Object? recipientId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {int? id,
      int userId,
      int recipientId,
      RequestStatus status,
      DateTime createdAt,
      String? notes});
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
    Object? id = freezed,
    Object? userId = null,
    Object? recipientId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? notes = freezed,
  }) {
    return _then(_$TransportRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportRequestImpl implements _TransportRequest {
  const _$TransportRequestImpl(
      {this.id,
      required this.userId,
      required this.recipientId,
      required this.status,
      required this.createdAt,
      this.notes});

  factory _$TransportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final int userId;
  @override
  final int recipientId;
  @override
  final RequestStatus status;
  @override
  final DateTime createdAt;
// Fecha de creación para tracking
  @override
  final String? notes;

  @override
  String toString() {
    return 'TransportRequest(id: $id, userId: $userId, recipientId: $recipientId, status: $status, createdAt: $createdAt, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, recipientId, status, createdAt, notes);

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
      {final int? id,
      required final int userId,
      required final int recipientId,
      required final RequestStatus status,
      required final DateTime createdAt,
      final String? notes}) = _$TransportRequestImpl;

  factory _TransportRequest.fromJson(Map<String, dynamic> json) =
      _$TransportRequestImpl.fromJson;

  @override
  int? get id;
  @override
  int get userId;
  @override
  int get recipientId;
  @override
  RequestStatus get status;
  @override
  DateTime get createdAt;
  @override // Fecha de creación para tracking
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$TransportRequestImplCopyWith<_$TransportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
