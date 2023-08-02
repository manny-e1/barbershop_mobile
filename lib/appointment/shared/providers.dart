import 'package:barbershop_frontend/appointment/application/appointment_notifier.dart';
import 'package:barbershop_frontend/appointment/infrastructure/appointment_repository.dart';
import 'package:barbershop_frontend/appointment/infrastructure/data_source/appointment_remote_service.dart';
import 'package:barbershop_frontend/core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appointmentRemoteServiceProvider =
    Provider((ref) => AppointmentRemoteService(ref.watch(dioProvider)));

final appointmentRepositoryProvider = Provider((ref) =>
    AppointmentRepository(ref.watch(appointmentRemoteServiceProvider)));

final appointmentNotifierProvider = StateNotifierProvider<AppointmentNotifier,AppointmentState>(
    (ref) => AppointmentNotifier(ref.watch(appointmentRepositoryProvider)));
