// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopReviewDTO _$$_ShopReviewDTOFromJson(Map<String, dynamic> json) =>
    _$_ShopReviewDTO(
      id: json['_id'] as String,
      reviewer: UserDTO.fromJson(json['reviewer'] as Map<String, dynamic>),
      reviewee: ShopDTO.fromJson(json['shop'] as Map<String, dynamic>),
      reviewText: json['reviewText'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ShopReviewDTOToJson(_$_ShopReviewDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'reviewer': instance.reviewer,
      'shop': instance.reviewee,
      'reviewText': instance.reviewText,
      'rating': instance.rating,
    };
