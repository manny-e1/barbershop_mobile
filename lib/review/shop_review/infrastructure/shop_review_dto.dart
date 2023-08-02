import 'package:barbershop_frontend/review/core/domain/review.dart';
import 'package:barbershop_frontend/shops/infrastructure/shop_dto.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_review_dto.freezed.dart';
part 'shop_review_dto.g.dart';

@freezed
class ShopReviewDTO with _$ShopReviewDTO {
  const ShopReviewDTO._();
  const factory ShopReviewDTO({
    @JsonKey(name: '_id') required String id,
    required UserDTO reviewer,
    @JsonKey(name: 'shop') required ShopDTO reviewee,
    required String reviewText,
    required double rating,
  }) = _ShopReviewDTO;

  factory ShopReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$ShopReviewDTOFromJson(json);

  factory ShopReviewDTO.fromDomain(Review _) {
    return ShopReviewDTO(
        id: _.id,
        reviewer: UserDTO.fromDomain(_.reviewer),
        reviewee: ShopDTO.fromDomain(_.reviewee),
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
