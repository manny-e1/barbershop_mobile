import 'package:barbershop_frontend/review/barber_review/infrastructure/barber_review_dto.dart';
import 'package:barbershop_frontend/review/core/domain/review.dart';

extension DTOListToDomainList on List<BarberReviewDTO> {
  List<Review> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}