import 'package:barbershop_frontend/core/domain/api_failure.dart';
import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

class UserRepository {
  final UserRemoteServices _remoteServices;

  UserRepository(this._remoteServices);

  Future<Either<ApiFailure, User>> getUser(id) async {
    try {
      final user = await _remoteServices.getUser(id);
      return user.when(
        noConnection: () => left(const ApiFailure.server(
            'Your device is not connected to internet.')),
        withData: (data) => right(
          data.toDomain(),
        ),
      );
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }
  Future<Either<ApiFailure, User>> getProfile() async {
    try {
      final user = await _remoteServices.getProfile();
      return user.when(
        noConnection: () => left(const ApiFailure.server(
            'Your device is not connected to internet.')),
        withData: (data) => right(
          data.toDomain(),
        ),
      );
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }
  Future<Either<ApiFailure, List<User>>> getUsers() async {
    try {
      final user = await _remoteServices.getUsers();
      return user.when(
        noConnection: () => left(const ApiFailure.server(
            'Your device is not connected to internet.')),
        withData: (data) => right(
          data.toDomain(),
        ),
      );
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }
}
