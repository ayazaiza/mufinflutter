import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';

import '../../data/models/courses/enroll_course_model.dart';

abstract interface class EnrollCourseRepo {
  Future<Resource<List<EnrollCourse>>> getEnrollListByStudIdUUId(
      String userId, String studentId);

  Future<Resource<List<EnrollCourse>>> getEnrollListByCouIdUUId(
      String userId, String courseId);

  Future<Resource<EnrollCourse>> getEnrollCourse(String enrollId);

  Future<Resource<List<EnrollCourse>>> getEnrollListByInstructorId(
      String instructorId);

  Future<Resource<List<EnrollCourse>>> getEnrollListByCouId(String courseId);

  Future<Resource<List<EnrollCourse>>> getEnrollListByStuId(String studentId);

  Future<Resource<List<EnrollCourse>>> getEnrollListByUUId(String userId);

  Future<Resource<List<EnrollCourse>>> getEnrollCourseList();

  Future<Resource<bool>> hasEnrolled(
      String userId, String studentId, String courseId, String subCourseId);

  Future<Resource<String>> enrollNewCourse(EnrollCourseModel enrollCourseModel);

  Future<Resource<String>> updateEnrolledCourse(EnrollCourseModel enrollCourseModel);
}
