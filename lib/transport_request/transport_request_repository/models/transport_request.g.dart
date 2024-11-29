// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TransportRequestToJson(TransportRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'recipientId': instance.recipientId,
      'status': _$RequestStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'notes': instance.notes,
    };

const _$RequestStatusEnumMap = {
  RequestStatus.preparando: 'Preparando',
  RequestStatus.trasladandose: 'Trasladándose',
  RequestStatus.entregada: 'Entregada',
};

_$TransportRequestImpl _$$TransportRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      recipientId: (json['recipientId'] as num).toInt(),
      status: $enumDecode(_$RequestStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TransportRequestImplToJson(
        _$TransportRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'recipientId': instance.recipientId,
      'status': _$RequestStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'notes': instance.notes,
    };
