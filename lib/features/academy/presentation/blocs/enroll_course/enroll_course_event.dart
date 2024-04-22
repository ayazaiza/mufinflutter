part of 'enroll_course_bloc.dart';

@freezed
class EnrollCourseEvent with _$EnrollCourseEvent {
  const factory EnrollCourseEvent.fetchData() = FetchData;

  const factory EnrollCourseEvent.fetchStudentsEvent({required String userId}) =
      FetchStudentsEvent;

  const factory EnrollCourseEvent.studentsEvent(
      {required List<Student> students}) = StudentsEvent;

  const factory EnrollCourseEvent.selectStudentEvent(
      {required Student student}) = SelectStudentEvent;

  const factory EnrollCourseEvent.fetchCoursesEvent() = FetchCoursesEvent;

  const factory EnrollCourseEvent.allCoursesEvent(
      {required List<Course> courses}) = AllCoursesEvent;

  const factory EnrollCourseEvent.selectCourseEvent({required Course course}) =
      SelectCourseEvent;

  const factory EnrollCourseEvent.cacheSubCoursesEvent(
      {required String courseId,
      required List<SubCourse> subCourses}) = CacheSubCoursesEvent;

  const factory EnrollCourseEvent.fetchSubCourseEvent(
      {required Course course}) = FetchSubCourseEvent;

  const factory EnrollCourseEvent.allSubCoursesEvent(
      {required Course course, required List<SubCourse> subCourses}) = AllSubCoursesEvent;

  const factory EnrollCourseEvent.selectSubCourseEvent(
      {required SubCourse subCourse}) = SelectSubCourseEvent;

  const factory EnrollCourseEvent.commentsChangeEvent(
      {required String comments}) = CommentsChangeEvent;

  const factory EnrollCourseEvent.fetchEnrollsEvent(
      {required String? enrollId}) = FetchEnrollsEvent;

  const factory EnrollCourseEvent.submitEnroll() = SubmitEnroll;

  const factory EnrollCourseEvent.resetEnroll() = ResetEnroll;

  const factory EnrollCourseEvent.errorEvent({required String msg}) =
      ErrorEvent;

  const factory EnrollCourseEvent.successEvent({required String msg}) =
      SuccessEvent;

  const factory EnrollCourseEvent.enrollNewCourseEvent({required EnrollCourse enrollCourse}) =
  EnrollNewCourseEvent;
}
