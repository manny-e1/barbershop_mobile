import 'package:barbershop_frontend/shops/domain/shop.dart';
import 'package:barbershop_frontend/user/user_services/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';

@freezed
class Appointment with _$Appointment {
  const Appointment._();
  const factory Appointment(
      {
        required String id,
        required User client,
      required User barber,
      required Shop shop,
      required String startTime,
      required String endTime,
      required String date,
      required String status}) = _Appointment;
}
