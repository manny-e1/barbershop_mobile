import 'package:barbershop_frontend/appointment/domain/appointment.dart';
import 'package:barbershop_frontend/appointment/infrastructure/appointment_dto.dart';

extension DTOListToDomainList on List<AppointmentDTO> {
  List<Appointment> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

