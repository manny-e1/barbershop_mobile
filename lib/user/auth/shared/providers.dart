import 'package:barbershop_frontend/user/auth/application/auth_notifier.dart';
import 'package:barbershop_frontend/user/auth/application/auth_validation_notifier.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/auth_interceptor.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/authenticator.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final secureStorageProvider = Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio());

final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => SecureCredentialsStorage(ref.read(secureStorageProvider)),
);

final authenticatorProvider = Provider(
  (ref) => Authenticator(
    ref.watch(credentialsStorageProvider),
    ref.watch(dioForAuthProvider)
      ..options = BaseOptions(baseUrl: dotenv.env['API_BASE_URL']!),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(authenticatorProvider)),
);

final authInterceptorProvider = Provider(
  (ref) => AuthInterceptor(
    ref.watch(authenticatorProvider),
  ),
);

final authValidationProvider = ChangeNotifierProvider<AuthValidationNotifier>(
    (ref) => AuthValidationNotifier());
