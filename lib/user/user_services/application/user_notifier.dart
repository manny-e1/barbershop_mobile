import 'package:barbershop_frontend/core/core.dart';
import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user_notifier.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial() = _Initial;
  const factory UserState.loadInProgress() = _LoadInProgress;
  const factory UserState.userLoadSuccess(User user) = _UserLoadSuccess;
  const factory UserState.usersLoadSuccess(List<User> user) = _UsersLoadSuccess;
  const factory UserState.failure(String message) = _Failure;
}

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository _userRepository;
  UserNotifier(this._userRepository) : super(const UserState.initial());

  Future<void> getUser(id) async {
    state = const UserState.loadInProgress();
    final user = await _userRepository.getUser(id);
    String failure = resolveFailureOrSuccess(user);
    state = user.fold((l) => UserState.failure(failure), (r) => UserState.userLoadSuccess(r));
  }

  Future<void> getUsers() async {
    state = const UserState.loadInProgress();
    final users = await _userRepository.getUsers();
    String failure = resolveFailureOrSuccess(users);
    state = users.fold((l) => UserState.failure(failure), (r) => UserState.usersLoadSuccess(r));
  }
}
