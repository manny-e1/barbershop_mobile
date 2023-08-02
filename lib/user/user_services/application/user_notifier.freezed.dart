// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _UserLoadSuccess userLoadSuccess(User user) {
    return _UserLoadSuccess(
      user,
    );
  }

  _UsersLoadSuccess usersLoadSuccess(List<User> user) {
    return _UsersLoadSuccess(
      user,
    );
  }

  _Failure failure(String message) {
    return _Failure(
      message,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) userLoadSuccess,
    required TResult Function(List<User> user) usersLoadSuccess,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_UserLoadSuccess value) userLoadSuccess,
    required TResult Function(_UsersLoadSuccess value) usersLoadSuccess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) userLoadSuccess,
    required TResult Function(List<User> user) usersLoadSuccess,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_UserLoadSuccess value) userLoadSuccess,
    required TResult Function(_UsersLoadSuccess value) usersLoadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends UserState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress() : super._();

  @override
  String toString() {
    return 'UserState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) userLoadSuccess,
    required TResult Function(List<User> user) usersLoadSuccess,
    required TResult Function(String message) failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_UserLoadSuccess value) userLoadSuccess,
    required TResult Function(_UsersLoadSuccess value) usersLoadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends UserState {
  const factory _LoadInProgress() = _$_LoadInProgress;
  const _LoadInProgress._() : super._();
}

/// @nodoc
abstract class _$UserLoadSuccessCopyWith<$Res> {
  factory _$UserLoadSuccessCopyWith(
          _UserLoadSuccess value, $Res Function(_UserLoadSuccess) then) =
      __$UserLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserLoadSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserLoadSuccessCopyWith<$Res> {
  __$UserLoadSuccessCopyWithImpl(
      _UserLoadSuccess _value, $Res Function(_UserLoadSuccess) _then)
      : super(_value, (v) => _then(v as _UserLoadSuccess));

  @override
  _UserLoadSuccess get _value => super._value as _UserLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UserLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserLoadSuccess extends _UserLoadSuccess {
  const _$_UserLoadSuccess(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.userLoadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UserLoadSuccessCopyWith<_UserLoadSuccess> get copyWith =>
      __$UserLoadSuccessCopyWithImpl<_UserLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) userLoadSuccess,
    required TResult Function(List<User> user) usersLoadSuccess,
    required TResult Function(String message) failure,
  }) {
    return userLoadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
  }) {
    return userLoadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (userLoadSuccess != null) {
      return userLoadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_UserLoadSuccess value) userLoadSuccess,
    required TResult Function(_UsersLoadSuccess value) usersLoadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return userLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
  }) {
    return userLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (userLoadSuccess != null) {
      return userLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _UserLoadSuccess extends UserState {
  const factory _UserLoadSuccess(User user) = _$_UserLoadSuccess;
  const _UserLoadSuccess._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$UserLoadSuccessCopyWith<_UserLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsersLoadSuccessCopyWith<$Res> {
  factory _$UsersLoadSuccessCopyWith(
          _UsersLoadSuccess value, $Res Function(_UsersLoadSuccess) then) =
      __$UsersLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<User> user});
}

/// @nodoc
class __$UsersLoadSuccessCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$UsersLoadSuccessCopyWith<$Res> {
  __$UsersLoadSuccessCopyWithImpl(
      _UsersLoadSuccess _value, $Res Function(_UsersLoadSuccess) _then)
      : super(_value, (v) => _then(v as _UsersLoadSuccess));

  @override
  _UsersLoadSuccess get _value => super._value as _UsersLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UsersLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UsersLoadSuccess extends _UsersLoadSuccess {
  const _$_UsersLoadSuccess(this.user) : super._();

  @override
  final List<User> user;

  @override
  String toString() {
    return 'UserState.usersLoadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UsersLoadSuccessCopyWith<_UsersLoadSuccess> get copyWith =>
      __$UsersLoadSuccessCopyWithImpl<_UsersLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) userLoadSuccess,
    required TResult Function(List<User> user) usersLoadSuccess,
    required TResult Function(String message) failure,
  }) {
    return usersLoadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
  }) {
    return usersLoadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (usersLoadSuccess != null) {
      return usersLoadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_UserLoadSuccess value) userLoadSuccess,
    required TResult Function(_UsersLoadSuccess value) usersLoadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return usersLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
  }) {
    return usersLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (usersLoadSuccess != null) {
      return usersLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _UsersLoadSuccess extends UserState {
  const factory _UsersLoadSuccess(List<User> user) = _$_UsersLoadSuccess;
  const _UsersLoadSuccess._() : super._();

  List<User> get user;
  @JsonKey(ignore: true)
  _$UsersLoadSuccessCopyWith<_UsersLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Failure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(User user) userLoadSuccess,
    required TResult Function(List<User> user) usersLoadSuccess,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(User user)? userLoadSuccess,
    TResult Function(List<User> user)? usersLoadSuccess,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_UserLoadSuccess value) userLoadSuccess,
    required TResult Function(_UsersLoadSuccess value) usersLoadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_UserLoadSuccess value)? userLoadSuccess,
    TResult Function(_UsersLoadSuccess value)? usersLoadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends UserState {
  const factory _Failure(String message) = _$_Failure;
  const _Failure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
