import 'package:barbershop_frontend/appointment/infrastructure/appointment_dto.dart';
import 'package:barbershop_frontend/core/infrastructure/infrastructure.dart';
import 'package:dio/dio.dart';

class AppointmentRemoteService {
  final Dio _dio;

  AppointmentRemoteService(this._dio);

  Future<RemoteResponse<List<AppointmentDTO>>> getAppointments() async{
    try {
      final response = await _dio.get('/appointments');
      if (response.statusCode == 200) {
        final listOfAppointments = response.data as List;
        List<AppointmentDTO> appointments = listOfAppointments
            .map((shop) => AppointmentDTO.fromJson(shop as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withData(appointments);
      } else {
        throw ApiException(response.data["message"]);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }
      throw ApiException(e.response?.data["message"]);
    }
  }
}
