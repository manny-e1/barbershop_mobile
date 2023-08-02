import 'package:barbershop_frontend/core/domain/api_failure.dart';
import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/review/barber_review/infrastructure/barber_review_dto.dart';
import 'package:barbershop_frontend/review/barber_review/infrastructure/data_source/barber_review_remote_service.dart';
import 'package:barbershop_frontend/review/barber_review/infrastructure/convert_dto.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/convert_dto.dart';
import 'package:barbershop_frontend/review/core/domain/review.dart';
import 'package:barbershop_frontend/review/core/domain/review_enum.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/data_source/shop_review_remote_service.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/shop_review_dto.dart';
import 'package:dartz/dartz.dart';

class ReviewRepository {
  final BarberReviewRemoteService _barberService;
  final ShopReviewRemoteService _shopService;

  ReviewRepository(this._barberService, this._shopService);

  Future<Either<ApiFailure, List<Review>>> getReviews(ReviewType t, String id) async {
    try {
      late RemoteResponse reviews;
      switch (t) {
        case ReviewType.barber:
          reviews = await _barberService.getBarberReviews(id);
          break;
        case ReviewType.shop:
          reviews = await _shopService.getShopReviews(id);
          break;
        default:
          reviews = const RemoteResponse.withData([]);
      }
      return reviews.when(
          noConnection: () => left(const ApiFailure.server(
              'Your device is not connected to internet.')),
          withData: (data) {
            if (t == ReviewType.barber) {
              List<BarberReviewDTO> reviews = data as List<BarberReviewDTO>;
              return right(
                reviews.toDomain(),
              );
            } else {
              List<ShopReviewDTO> reviews = data as List<ShopReviewDTO>;
              return right(
                reviews.toDomain(),
              );
            }
          });
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }
}
