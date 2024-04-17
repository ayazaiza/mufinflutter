import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/datasources/enroll_course_data_source.dart';

import 'package:academy/features/academy/data/models/courses/enroll_course_model.dart';

import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../../domain/repository/enroll_course_repo.dart';

class EnrollCourseRepoImpl implements EnrollCourseRepo {
  final EnrollCourseDataSource _enrollCourseDataSource;

  EnrollCourseRepoImpl({required EnrollCourseDataSource enrollCourseDataSource})
      : _enrollCourseDataSource = enrollCourseDataSource;

  @override
  Future<Resource<String>> enrollNewCourse(
      EnrollCourseModel enrollCourseModel) async {
    try {
      await _enrollCourseDataSource.enrollNewCourse(enrollCourseModel);
      return const DataSuccess(AppStrings.successfullyAdded);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<EnrollCourse>> getEnrollCourse(String enrollId) async {
    try {
      var resp = await _enrollCourseDataSource.getEnrollCourse(enrollId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(EnrollCourseModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollCourseList() async {
    return await _getEnrolls(
        () async => await _enrollCourseDataSource.getEnrollCourseList());
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollListByCouId(
      String courseId) async {
    return await _getEnrolls(() async =>
        await _enrollCourseDataSource.getEnrollListByCouId(courseId));
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollListByCouIdUUId(
      String userId, String courseId) async {
    return await _getEnrolls(() async => await _enrollCourseDataSource
        .getEnrollListByCouIdUUId(userId, courseId));
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollListByInstructorId(
      String instructorId) async {
    return await _getEnrolls(() async => await _enrollCourseDataSource
        .getEnrollListByInstructorId(instructorId));
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollListByStuId(
      String studentId) async {
    return await _getEnrolls(() async =>
        await _enrollCourseDataSource.getEnrollListByStuId(studentId));
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollListByStudIdUUId(
      String userId, String studentId) async {
    return await _getEnrolls(() async => await _enrollCourseDataSource
        .getEnrollListByStudIdUUId(userId, studentId));
  }

  @override
  Future<Resource<List<EnrollCourse>>> getEnrollListByUUId(
      String userId) async {
    return await _getEnrolls(
        () async => await _enrollCourseDataSource.getEnrollListByUUId(userId));
  }

  @override
  Future<Resource<bool>> hasEnrolled(String userId, String studentId,
      String courseId, String subCourseId) async {
    try {
      var resp = await _enrollCourseDataSource.hasEnrolled(
          userId, studentId, courseId, subCourseId);
      return DataSuccess(resp.toMapList
          .map((event) => EnrollCourseModel.fromMap(event))
          .toList()
          .isNotEmpty);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<String>> updateEnrolledCourse(
      EnrollCourseModel enrollCourseModel) async {
    try {
      await _enrollCourseDataSource.updateEnrolledCourse(enrollCourseModel);
      return const DataSuccess(AppStrings.successfullyUpdated);
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  Future<Resource<List<EnrollCourse>>> _getEnrolls(
      Future<QuerySnapshot<Object?>> Function() func) async {
    try {
      var resp = await func();
      return DataSuccess(resp.toMapList
          .map((event) => EnrollCourseModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}
