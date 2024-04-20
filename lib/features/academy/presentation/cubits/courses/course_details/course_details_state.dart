part of 'course_details_cubit.dart';

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState(
      {@Default(true) bool isLoading,
      String? error,
      Course? course,
      @Default([]) List<SubCourse> subCourses,
      }) = _Initial;
}
