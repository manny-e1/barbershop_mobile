// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barber_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BarberReviewDTO _$$_BarberReviewDTOFromJson(Map<String, dynamic> json) =>
    _$_BarberReviewDTO(
      id: json['_id'] as String,
      reviewer: UserDTO.fromJson(json['reviewer'] as Map<String, dynamic>),
      reviewee: UserDTO.fromJson(json['barber'] as Map<String, dynamic>),
      reviewText: json['reviewText'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BarberReviewDTOToJson(_$_BarberReviewDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'reviewer': instance.reviewer,
      'barber': instance.reviewee,
      'reviewText': instance.reviewText,
      'rating': instance.rating,
    };
