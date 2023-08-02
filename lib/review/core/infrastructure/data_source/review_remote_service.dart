import 'package:barbershop_frontend/core/core.dart';
import 'package:barbershop_frontend/review/barber_review/infrastructure/barber_review_dto.dart';
import 'package:barbershop_frontend/review/core/domain/review_enum.dart';
import 'package:barbershop_frontend/review/shop_review/infrastructure/shop_review_dto.dart';
import 'package:dio/dio.dart';

class ReviewRemoteService {
  final Dio _dio;

  ReviewRemoteService(this._dio);

  Future<RemoteResponse<List<T>>> getReviews<T>({
    required String requestUrl,
    required ReviewType t 
  }) async {
    try {
      final response = await _dio.get(requestUrl);
      if (response.statusCode == 200) {
        final listOfReviews = response.data as List;
        late final reviews;
        if (t == ReviewType.shop) {
          reviews = listOfReviews
              .map((e) => ShopReviewDTO.fromJson(e as Map<String, dynamic>))
              .toList();
        } else {
          reviews = listOfReviews
              .map((e) => BarberReviewDTO.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return RemoteResponse.withData(reviews);
      } else {
        throw ApiException(response.data["message"]);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }
      throw ApiException(e.response?.data["message"]);
    }
  }
}
