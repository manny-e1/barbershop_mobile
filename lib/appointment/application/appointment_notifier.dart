import 'package:barbershop_frontend/appointment/domain/appointment.dart';
import 'package:barbershop_frontend/appointment/infrastructure/appointment_repository.dart';
import 'package:barbershop_frontend/core/infrastructure/helper_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'appointment_notifier.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const AppointmentState._();
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.loadInProgress() = _LoadInProgress;
  const factory AppointmentState.loadSuccess(List<Appointment> appointment) =
      _LoadSuccess;
  const factory AppointmentState.failure(String message) = _Factory;
}

class AppointmentNotifier extends StateNotifier<AppointmentState> {
  final AppointmentRepository _repository;
  AppointmentNotifier(this._repository)
      : super(const AppointmentState.initial());

  Future<void> getAppointments() async {
    state = const AppointmentState.loadInProgress();
    final appointment = await _repository.getAppointments();
    String failure = resolveFailureOrSuccess(appointment);
    state = appointment.fold((l) => AppointmentState.failure(failure),
        (r) => AppointmentState.loadSuccess(r));
  }

  void getAppointment(id) {
    List<Appointment> appointments =
        state.maybeWhen(orElse: () => [], loadSuccess: (_) => _);
    final appointment = appointments.where((e) => e.id == id).toList();
    state = AppointmentState.loadSuccess(appointment);
  }
}
