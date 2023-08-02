import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_dto.dart';
import 'package:dio/dio.dart';

class UserRemoteServices {
  final Dio _dio;

  UserRemoteServices(this._dio);

  Future<RemoteResponse<UserDTO>> getUser(id) async {
    try {
      final response = await _dio.get('/users/$id');
      if (response.statusCode == 200) {
        return RemoteResponse.withData(UserDTO.fromJson(response.data));
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

  Future<RemoteResponse<UserDTO>> getProfile() async {
    try {
      final response = await _dio.get('/users/me');
      if (response.statusCode == 200) {
        return RemoteResponse.withData(UserDTO.fromJson(response.data));
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

  Future<RemoteResponse<List<UserDTO>>> getUsers() async {
    try {
      final response = await _dio.get('/users');
      if (response.statusCode == 200) {
        final listOfUsers = response.data as List;
        List<UserDTO> users = listOfUsers
            .map((user) => UserDTO.fromJson(user as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withData(users);
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

  // Future<RemoteResponse<UserDTO>> updateProfile(updatedFields) async {
  //   try {
  //     final response = await _dio.get('/users/update');
  //     if (response.statusCode == 200) {
  //       return RemoteResponse.withData(UserDTO.fromJson(response.data));
  //     } else {
  //       throw ApiException(response.data["message"]);
  //     }
  //   } on DioError catch (e) {
  //     if (e.isNoConnectionError) {
  //       return const RemoteResponse.noConnection();
  //     }
  //     throw ApiException(e.response?.data["message"]);
  //   }
  // }
}
