import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
class Review<T> with _$Review<T> {
  const Review._();
  const factory Review({
    required String id,
    required User reviewer,
    required T reviewee,
    required String reviewText,
    required double rating,
  }) = _Review;
}
