// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destinatario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DestinatarioToJson(Destinatario instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
    };

_$DestinatarioImpl _$$DestinatarioImplFromJson(Map<String, dynamic> json) =>
    _$DestinatarioImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$DestinatarioImplToJson(_$DestinatarioImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
    };
