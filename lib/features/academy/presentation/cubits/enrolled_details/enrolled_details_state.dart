part of 'enrolled_details_cubit.dart';

@freezed
class EnrolledDetailsState with _$EnrolledDetailsState {
  const factory EnrolledDetailsState({
    @Default(true) bool isLoading,
    String? error,
    EnrollCourse? enrollCourse,
    @Default(["Pause", "Resume", "Stop"]) List<String> reqList,
    @Default([]) List<StudentTimes> studentTimes,
  }) = _Initial;
}
