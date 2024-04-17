import 'package:academy/core/error/app_exceptions.dart';
import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/datasources/courses_data_source.dart';
import 'package:academy/features/academy/data/models/courses/certification_course_model.dart';
import 'package:academy/features/academy/data/models/courses/course_model.dart';
import 'package:academy/features/academy/data/models/courses/grade_course_model.dart';
import 'package:academy/features/academy/data/models/courses/lesson_course_model.dart';
import 'package:academy/features/academy/data/models/courses/sub_course_model.dart';

import 'package:academy/features/academy/domain/entities/courses/certification_course.dart';

import 'package:academy/features/academy/domain/entities/courses/course.dart';

import 'package:academy/features/academy/domain/entities/courses/grade_course.dart';

import 'package:academy/features/academy/domain/entities/courses/lesson_course.dart';

import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';

import '../../../../core/constants/app_strings.dart';
import '../../domain/repository/courses_repo.dart';

class CoursesRepoImpl implements CoursesRepo {
  final CoursesDataSource _coursesDataSource;

  CoursesRepoImpl({required CoursesDataSource coursesDataSource})
      : _coursesDataSource = coursesDataSource;

  @override
  Future<Resource<CertificationCourse>> getCertificationCourse(
      String certificationId) async {
    try {
      var resp =
          await _coursesDataSource.getCertificationCourse(certificationId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(CertificationCourseModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<CertificationCourse>>> getCertificationCourses(
      String courseId, String subCourseId) async {
    try {
      var resp = await _coursesDataSource.getCertificationCourses(
          courseId, subCourseId);
      return DataSuccess(resp.toMapList
          .map((event) => CertificationCourseModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<Course>> getCourse(String courseId) async {
    try {
      var resp = await _coursesDataSource.getCourse(courseId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(CourseModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<Course>>> getCourses() async {
    try {
      var resp = await _coursesDataSource.getCourses();
      return DataSuccess(
          resp.toMapList.map((event) => CourseModel.fromMap(event)).toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<GradeCourse>> getGradeCourse(String gradeId) async {
    try {
      var resp = await _coursesDataSource.getGradeCourse(gradeId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(GradeCourseModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<GradeCourse>>> getGradeCourses(
      String courseId, String subCourseId, String certificationId) async {
    try {
      var resp = await _coursesDataSource.getGradeCourses(
          courseId, subCourseId, certificationId);
      return DataSuccess(resp.toMapList
          .map((event) => GradeCourseModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<LessonCourse>> getLessonCourse(String lessonId) async {
    try {
      var resp = await _coursesDataSource.getLessonCourse(lessonId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(LessonCourseModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<LessonCourse>>> getLessonCourses(String courseId,
      String subCourseId, String certificationId, String gradeId) async {
    try {
      var resp = await _coursesDataSource.getLessonCourses(
          courseId, subCourseId, certificationId, gradeId);
      return DataSuccess(resp.toMapList
          .map((event) => LessonCourseModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<SubCourse>> getSubCourse(String subCourseId) async {
    try {
      var resp = await _coursesDataSource.getSubCourse(subCourseId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(SubCourseModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<SubCourse>>> getSubCourses(String courseId) async {
    try {
      var resp = await _coursesDataSource.getSubCourses(courseId);
      return DataSuccess(resp.toMapList
          .map((event) => SubCourseModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}
