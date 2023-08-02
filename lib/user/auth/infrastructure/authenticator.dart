import 'dart:convert';
import 'package:barbershop_frontend/user/auth/domain/auth_failure.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:barbershop_frontend/user/core/infrastructure/custom_exceptions.dart';
import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

const String baseUrl = 'http://192.168.1.103:5000';

class Authenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  Authenticator(this._credentialsStorage, this._dio);

  Future<StringMap?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      if (storedCredentials != null) {
        if (JwtDecoder.isExpired(storedCredentials["accessToken"]!)) {
          //TODO: refresh token
        }
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return getSignedInCredentials().then((credentials) => credentials != null);
  }

  Future<Either<AuthFailure, Unit>> signIn(Map<String, String> user) async {
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      Response response = await _dio.post('/auth/login', data: user);
      if (response.statusCode == 200) {
        StringMap credentials = {
          "accessToken": response.data["accessToken"].toString()
        };
        await _credentialsStorage.save(credentials);
        return right(unit);
      } else {
        throw AuthenticationException(
            jsonDecode(response.data)["message"], response.statusCode);
      }
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthenticationException catch (e) {
      return left(AuthFailure.server(e.message));
    } on PlatformException {
      return left(const AuthFailure.storage());
    } on DioError catch (e) {
       if (e.isNoConnectionError) {
        return left(const AuthFailure.server('Network error!'));
      }
      return left(AuthFailure.server(e.response?.data["message"]));
    }
  }

  Future<Either<AuthFailure, Unit>> signUp(Map<String, String> user) async {
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      Response response = await _dio.post('/auth/register', data: user);
      if (response.statusCode == 201) {
        return right(unit);
      } else {
        throw AuthenticationException(
            jsonDecode(response.data)["message"], response.statusCode);
      }
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthenticationException catch (e) {
      return left(AuthFailure.server(e.message));
    } on PlatformException {
      return left(const AuthFailure.storage());
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(const AuthFailure.server('Network error!'));
      }
      return left(AuthFailure.server(e.response?.data["message"]));
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    // TODO: expire the access token and invalidate the refresh token on server
    return clearCredentialsStorage();
  }

  Future<Either<AuthFailure, Unit>> clearCredentialsStorage() async {
    try {
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  // Future<Either<AuthFailure, StringMap>> refresh(String refreshToken) async {
  //   try {

  //     await _credentialsStorage.save();
  //     return right();
  //   } on FormatException {
  //     return left(const AuthFailure.server());
  //   } on AuthenticationException catch (e) {
  //     return left(AuthFailure.server(e.message));
  //   } on PlatformException {
  //     return left(const AuthFailure.storage());
  //   }
  // }

}
