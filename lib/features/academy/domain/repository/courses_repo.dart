import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/certification_course.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/courses/grade_course.dart';
import 'package:academy/features/academy/domain/entities/courses/lesson_course.dart';
import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';

abstract interface class CoursesRepo {
  Future<Resource<Course>> getCourse(String courseId);

  Future<Resource<SubCourse>> getSubCourse(String subCourseId);

  Future<Resource<CertificationCourse>> getCertificationCourse(
      String certificationId);

  Future<Resource<GradeCourse>> getGradeCourse(String gradeId);

  Future<Resource<LessonCourse>> getLessonCourse(String lessonId);

  Future<Resource<List<Course>>> getCourses();

  Future<Resource<List<SubCourse>>> getSubCourses(String courseId);

  Future<Resource<List<CertificationCourse>>> getCertificationCourses(
      String courseId, String subCourseId);

  Future<Resource<List<GradeCourse>>> getGradeCourses(
      String courseId, String subCourseId, String certificationId);

  Future<Resource<List<LessonCourse>>> getLessonCourses(String courseId,
      String subCourseId, String certificationId, String gradeId);
}
