part of 'attendances_cubit.dart';

@freezed
class AttendancesState with _$AttendancesState {
  const factory AttendancesState(
      {@Default(true) bool isLoading,
      String? error,
      @Default([]) List<StudentAttendance> attendances}) = _Initial;
}
