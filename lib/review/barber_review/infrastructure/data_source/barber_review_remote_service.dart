import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/review/barber_review/infrastructure/barber_review_dto.dart';
import 'package:barbershop_frontend/review/core/domain/review_enum.dart';
import 'package:barbershop_frontend/review/core/infrastructure/data_source/review_remote_service.dart';
import 'package:dio/dio.dart';

class BarberReviewRemoteService extends ReviewRemoteService {
  final Dio _dio;

  BarberReviewRemoteService(this._dio) : super(_dio);

  Future<RemoteResponse<List<BarberReviewDTO>>> getBarberReviews(String barberID) async =>
      super.getReviews<BarberReviewDTO>(requestUrl: '/barber_reviews/barber/$barberID', t: ReviewType.barber);
}
