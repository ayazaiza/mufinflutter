part of 'attendance_cubit.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState(
      {@Default(true) bool isLoading,
      String? error,
      StudentAttendance? attendance}) = _Initial;
}
