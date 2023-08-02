import 'package:barbershop_frontend/user/auth/domain/auth_failure.dart';
import 'package:barbershop_frontend/user/auth/infrastructure/authenticator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(String message) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final Authenticator _authenticator;

  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  Future<void> checkAndUpdateAuthStatus() async {
    state = (await _authenticator.isSignedIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  Future<void> signIn(Map<String, String> user) async {
    state = const AuthState.loading();
    final failureOrSuccess = await _authenticator.signIn(user);
    String failure = resolveFailureOrSuccess(failureOrSuccess);
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(failure),
      (r) => const AuthState.authenticated(),
    );
  }
  Future<void> signUp(Map<String, String> user) async {
    state = const AuthState.loading();
    final failureOrSuccess = await _authenticator.signUp(user);
    String failure = resolveFailureOrSuccess(failureOrSuccess);
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(failure),
      (r) => const AuthState.unauthenticated(),
    );
  }

  Future<void> signOut() async {
    final failureOrSuccess = await _authenticator.signOut();
    String failure = resolveFailureOrSuccess(failureOrSuccess);
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(failure),
      (r) => const AuthState.unauthenticated(),
    );
  }
}

String resolveFailureOrSuccess(Either<AuthFailure, Unit> failureOrSuccess) {
  String failure = failureOrSuccess.fold((l) {
  return l.when(
        server: (message) => message ?? 'Something went wron', storage: () => 'Something went wrong!');
  }, (r) => '');
  return failure;
}
