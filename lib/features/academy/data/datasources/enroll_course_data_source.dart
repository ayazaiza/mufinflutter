import 'package:academy/features/academy/data/models/courses/enroll_course_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class EnrollCourseDataSource {
  Future<QuerySnapshot<Object?>> getEnrollListByStudIdUUId(
      String userId, String studentId);

  Future<QuerySnapshot<Object?>> getEnrollListByCouIdUUId(
      String userId, String courseId);

  Future<DocumentSnapshot<Object?>> getEnrollCourse(String enrollId);

  Future<QuerySnapshot<Object?>> getEnrollListByInstructorId(
      String instructorId);

  Future<QuerySnapshot<Object?>> getEnrollListByCouId(String courseId);

  Future<QuerySnapshot<Object?>> getEnrollListByStuId(String studentId);

  Future<QuerySnapshot<Object?>> getEnrollListByUUId(String userId);

  Future<QuerySnapshot<Object?>> getEnrollCourseList();

  Future<QuerySnapshot<Object?>> hasEnrolled(
      String userId, String studentId, String courseId, String subCourseId);

  Future<void> enrollNewCourse(EnrollCourseModel enrollCourseModel);

  Future<void> updateEnrolledCourse(EnrollCourseModel enrollCourseModel);
}

class EnrollCourseDataSourceImpl implements EnrollCourseDataSource {
  final CollectionReference _enrollCourseRef;

  EnrollCourseDataSourceImpl({required CollectionReference enrollCourseRef})
      : _enrollCourseRef = enrollCourseRef;

  @override
  Future<void> enrollNewCourse(EnrollCourseModel enrollCourseModel) async {
    return await _tryCatchVoid(() async {
      var id = _enrollCourseRef.doc().id;
      await _enrollCourseRef
          .doc(id)
          .set(enrollCourseModel.copyWith(enrollDocId: id).toMap());
    });
  }

  @override
  Future<DocumentSnapshot<Object?>> getEnrollCourse(String enrollId) async {
    return await _tryCatch(
        () async => await _enrollCourseRef.doc(enrollId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollCourseList() async {
    return await _tryCatchList(() async =>
        await _enrollCourseRef.orderBy("timestamp", descending: true).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollListByCouId(String courseId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("courseId", isEqualTo: courseId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollListByCouIdUUId(
      String userId, String courseId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("courseId", isEqualTo: courseId)
        .where("parentUserId", isEqualTo: userId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollListByInstructorId(
      String instructorId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("instructorId", isEqualTo: instructorId)
        .where("status", isEqualTo: "Processing")
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollListByStuId(String studentId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("studentDocumentId", isEqualTo: studentId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollListByStudIdUUId(
      String userId, String studentId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("parentUserId", isEqualTo: userId)
        .where("studentDocumentId", isEqualTo: studentId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getEnrollListByUUId(String userId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("parentUserId", isEqualTo: userId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> hasEnrolled(String userId, String studentId,
      String courseId, String subCourseId) async {
    return await _tryCatchList(() async => await _enrollCourseRef
        .where("parentUserId", isEqualTo: userId)
        .where("studentDocumentId", isEqualTo: studentId)
        .where("courseId", isEqualTo: courseId)
        .where("subCourseId", isEqualTo: subCourseId)
        .where("status", isNotEqualTo: "Completed")
        .get());
  }

  @override
  Future<void> updateEnrolledCourse(EnrollCourseModel enrollCourseModel) async {
    return await _tryCatchVoid(() async => await _enrollCourseRef
        .doc(enrollCourseModel.enrollDocId)
        .set(enrollCourseModel.toMap()));
  }

  Future<DocumentSnapshot<Object?>> _tryCatch(
      Future<DocumentSnapshot<Object?>> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<QuerySnapshot<Object?>> _tryCatchList(
      Future<QuerySnapshot<Object?>> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<void> _tryCatchVoid(Future<void> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
