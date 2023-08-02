import 'package:barbershop_frontend/core/providers.dart';
import 'package:barbershop_frontend/user/user_services/application/user_notifier.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_remote_services.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRemoteServiceprovider = Provider((ref) =>
  UserRemoteServices(
 ref.watch(dioProvider)));

final userRepositoryProvider =
    Provider((ref) => UserRepository(ref.watch(userRemoteServiceprovider)));

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>(
    (ref) => UserNotifier(ref.read(userRepositoryProvider)));
