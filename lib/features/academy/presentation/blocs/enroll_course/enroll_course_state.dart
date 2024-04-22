part of 'enroll_course_bloc.dart';

@freezed
class EnrollCourseState with _$EnrollCourseState {
  const factory EnrollCourseState({
    String? userId,
    String? studentId,
    String? courseId,
    String? enrollId,
    EnrollCourse? enrollCourse,
    @Default(true) bool screenLoading,
    String? errorMsg,
    String? submitError,
    @Default(false) bool isLoading,
    String? successMsg,
    @Default([]) List<Course> courses,
    @Default([]) List<SubCourse> subCourses,
    @Default([]) List<Student> students,
    @Default({}) Map<String, List<SubCourse>> cacheSubCourses,
    Student? selectedStudent,
    String? selectStudentError,
    String? selectCourseError,
    String? selectSubCourseError,
    Course? selectedCourse,
    SubCourse? selectedSubCourse,
    @Default("") String comments,
  }) = _Initial;
}
