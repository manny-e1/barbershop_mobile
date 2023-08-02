// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopDTO _$$_ShopDTOFromJson(Map<String, dynamic> json) => _$_ShopDTO(
      id: json['_id'] as String,
      name: json['name'] as String,
      shopAdmin: UserDTO.fromJson(json['shopAdmin'] as Map<String, dynamic>),
      barbers: (json['barbers'] as List<dynamic>)
          .map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: LocationDTO.fromJson(json['location'] as Map<String, dynamic>),
      pics: (json['pics'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>?)
          .toList(),
    );

Map<String, dynamic> _$$_ShopDTOToJson(_$_ShopDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'shopAdmin': instance.shopAdmin,
      'barbers': instance.barbers,
      'location': instance.location,
      'pics': instance.pics,
      'services': instance.services,
    };
