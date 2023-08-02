import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String name,
    required String email,
    required String phoneNumber,
    String? role,
    bool? emailConfirmed,
    String? avatar,
    String? gender, 
    List<String?>? availableDays, 
  }) = _User;
}
