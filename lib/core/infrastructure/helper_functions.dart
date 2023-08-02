import 'package:barbershop_frontend/core/domain/api_failure.dart';
import 'package:dartz/dartz.dart';

String resolveFailureOrSuccess<T>(Either<ApiFailure, T> failureOrSuccess) {
  String failure = failureOrSuccess.fold((l) {
  return l.when(
        server: (message) => message!, storage: () => 'Something went wrong!');
  }, (r) => '');
  return failure;
}
