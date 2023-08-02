// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDTO _$$_AppointmentDTOFromJson(Map<String, dynamic> json) =>
    _$_AppointmentDTO(
      id: json['_id'] as String,
      client: UserDTO.fromJson(json['client'] as Map<String, dynamic>),
      barber: UserDTO.fromJson(json['barber'] as Map<String, dynamic>),
      shop: ShopDTO.fromJson(json['shop'] as Map<String, dynamic>),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      date: json['date'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_AppointmentDTOToJson(_$_AppointmentDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'client': instance.client,
      'barber': instance.barber,
      'shop': instance.shop,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'date': instance.date,
      'status': instance.status,
    };
