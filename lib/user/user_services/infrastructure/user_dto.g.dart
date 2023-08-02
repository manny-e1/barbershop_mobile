// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      role: json['role'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      avatar: json['avatar'] as String?,
      gender: json['gender'] as String?,
      availableDays: (json['availableDays'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'emailConfirmed': instance.emailConfirmed,
      'avatar': instance.avatar,
      'gender': instance.gender,
      'availableDays': instance.availableDays,
    };
