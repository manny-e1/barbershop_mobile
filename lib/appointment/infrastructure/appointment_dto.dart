import 'package:barbershop_frontend/appointment/domain/appointment.dart';
import 'package:barbershop_frontend/shops/infrastructure/shop_dto.dart';
import 'package:barbershop_frontend/user/user_services/infrastructure/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_dto.freezed.dart';
part 'appointment_dto.g.dart';

@freezed
class AppointmentDTO with _$AppointmentDTO {
  const AppointmentDTO._();
  const factory AppointmentDTO(
      {
      @JsonKey(name: '_id') required String id,  
      required UserDTO client,
      required UserDTO barber,
      required ShopDTO shop,
      required String startTime,
      required String endTime,
      required String date,
      required String status}) = _AppointmentDTO;

  factory AppointmentDTO.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDTOFromJson(json);

  factory AppointmentDTO.fromDomain(Appointment _) {
    return AppointmentDTO(
      id: _.id,
        client: UserDTO.fromDomain(_.client),
        barber: UserDTO.fromDomain(_.barber),
        shop: ShopDTO.fromDomain(_.shop),
        startTime: _.startTime,
        endTime: _.endTime,
        date: _.date,
        status: _.status);
  }

  Appointment toDomain() {
    return Appointment(
      id: id,
        client: client.toDomain(),
        barber: barber.toDomain(),
        shop: shop.toDomain(),
        startTime: startTime,
        endTime: endTime,
        date: date,
        status: status);
  }
}
