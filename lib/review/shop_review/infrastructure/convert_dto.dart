import 'package:barbershop_frontend/review/barber_review/infrastructure/barber_review_dto.dart';
import 'package:barbershop_frontend/review/core/domain/review.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/shop_review_dto.dart';

extension DTOListToDomainList on List<ShopReviewDTO> {
  List<Review> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}