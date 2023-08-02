import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String email,
    required String phoneNumber,
    String? role,
    bool? emailConfirmed,
    String? avatar,
    String? gender, 
    List<String?>? availableDays, 
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      id: _.id, 
      name: _.name, 
      email: _.email, 
      phoneNumber: _.phoneNumber,
      role: _.role, 
      emailConfirmed: _.emailConfirmed, 
      avatar: _.avatar, 
      availableDays: _.availableDays,
      gender: _.gender
    );
  }

  User toDomain() {
    return User(
      id: id, 
      name: name, 
      email: email, 
      role: role, 
      phoneNumber: phoneNumber, 
      emailConfirmed: emailConfirmed,
      avatar: avatar,
      availableDays: availableDays,
      gender: gender  
    );
  }

}
