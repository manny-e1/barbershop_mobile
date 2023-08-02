import 'package:barbershop_frontend/core/core.dart';
import 'package:barbershop_frontend/review/core/domain/review_enum.dart';
import 'package:barbershop_frontend/review/core/infrastructure/data_source/review_remote_service.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/shop_review_dto.dart';
import 'package:dio/dio.dart';

class ShopReviewRemoteService extends ReviewRemoteService {
  final Dio _dio;

  ShopReviewRemoteService(this._dio) : super(_dio);

  Future<RemoteResponse<List<ShopReviewDTO>>> getShopReviews(String shopID) async =>
      super.getReviews<ShopReviewDTO>(requestUrl: '/shop_reviews/shop/$shopID', t: ReviewType.shop);
}
