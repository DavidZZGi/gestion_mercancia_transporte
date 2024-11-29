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
      'destinationName': instance.destinationName,
      'status': _$RequestStatusEnumMap[instance.status]!,
    };

const _$RequestStatusEnumMap = {
  RequestStatus.preparing: 'preparing',
  RequestStatus.inTransit: 'inTransit',
  RequestStatus.delivered: 'delivered',
};

_$TransportRequestImpl _$$TransportRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      recipientId: (json['recipientId'] as num).toInt(),
      destinationName: json['destinationName'] as String,
      status: $enumDecode(_$RequestStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$TransportRequestImplToJson(
        _$TransportRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'recipientId': instance.recipientId,
      'destinationName': instance.destinationName,
      'status': _$RequestStatusEnumMap[instance.status]!,
    };
