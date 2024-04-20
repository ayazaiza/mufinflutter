part of 'courses_cubit.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState(
      {@Default(true) bool isLoading,
      String? error,
      @Default([]) List<Course> courses}) = _Initial;
}
