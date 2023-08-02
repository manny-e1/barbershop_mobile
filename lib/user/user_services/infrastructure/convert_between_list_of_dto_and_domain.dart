
import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_dto.dart';

extension DTOListToDomainList on List<UserDTO> {
  List<User> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

extension DomainToDTOList on List<User> {
  List<UserDTO> toDTO() {
    return map((e) => UserDTO.fromDomain(e)).toList();
  }
}