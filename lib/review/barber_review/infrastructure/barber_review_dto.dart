import 'package:barbershop_frontend/review/core/domain/review.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'barber_review_dto.freezed.dart';
part 'barber_review_dto.g.dart';

@freezed
class BarberReviewDTO with _$BarberReviewDTO {
  const BarberReviewDTO._();
  const factory BarberReviewDTO({
     @JsonKey(name: '_id') required String id,
    required UserDTO reviewer,
    @JsonKey(name: 'barber') required UserDTO reviewee,
    required String reviewText,
    required double rating,
  }) = _BarberReviewDTO;

  factory BarberReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$BarberReviewDTOFromJson(json);

  factory BarberReviewDTO.fromDomain(Review _) {
    return BarberReviewDTO(
        id: _.id,
        reviewer: UserDTO.fromDomain(_.reviewer),
        reviewee: UserDTO.fromDomain(_.reviewee),
        reviewText: _.reviewText,
        rating: _.rating);
  }

  Review toDomain() {
    return Review(
        id: id,
        reviewer: reviewer.toDomain(),
        reviewee: reviewee.toDomain(),
        reviewText: reviewText,
        rating: rating);
  }
}
