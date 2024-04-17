part of 'student_details_cubit.dart';

@freezed
class StudentDetailsState with _$StudentDetailsState {
  const factory StudentDetailsState({
    String? uuid,
    String? studentId,
    Student? student,
    String? error,
    @Default([]) List<EnrollCourse> enrollCourses,
    @Default([]) List<StudentTimes> allClasses,
    @Default([]) List<Song> songs,
    @Default(true) bool isLoading
}) = _Initial;
}
