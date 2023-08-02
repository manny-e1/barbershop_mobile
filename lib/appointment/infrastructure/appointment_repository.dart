import 'package:barbershop_frontend/appointment/domain/appointment.dart';
import 'package:barbershop_frontend/appointment/infrastructure/data_source/appointment_remote_service.dart';
import 'package:barbershop_frontend/appointment/infrastructure/convert_dto.dart';
import 'package:barbershop_frontend/core/domain/api_failure.dart';
import 'package:barbershop_frontend/core/infrastructure/api_exception.dart';
import 'package:dartz/dartz.dart';

class AppointmentRepository {
  final AppointmentRemoteService _remoteService;

  AppointmentRepository(this._remoteService);

  Future<Either<ApiFailure, List<Appointment>>> getAppointments() async {
     try {
      final shops = await _remoteService.getAppointments();
      return shops.when(
        noConnection: () => left(const ApiFailure.server(
            'Your device is not connected to internet.')),
        withData: (data) => right(
          data.toDomain(),
        ),
      );
    } on ApiException catch (e) {
      return left(ApiFailure.server(e.message));
    }
  }

}
