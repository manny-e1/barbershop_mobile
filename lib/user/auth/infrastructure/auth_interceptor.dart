import 'package:barbershop_frontend/user/auth/infrastructure/authenticator.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Authenticator _authenticator;
  // final AuthNotifier _notifier;
  // final Dio _dio;

  AuthInterceptor(this._authenticator
      // , this._notifier, this._dio
      );

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final credentials = await _authenticator.getSignedInCredentials();
    final interceptedOptions = options
      ..headers.addAll(
        credentials == null
            ? {}
            : {'Authorization': 'bearer ${credentials["accessToken"]}'},
      );
    handler.next(interceptedOptions);
  }
}
