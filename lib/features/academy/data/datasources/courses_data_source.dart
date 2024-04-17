import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class CoursesDataSource {
  Future<DocumentSnapshot<Object?>> getCourse(String courseId);

  Future<DocumentSnapshot<Object?>> getSubCourse(String subCourseId);

  Future<DocumentSnapshot<Object?>> getCertificationCourse(
      String certificationId);

  Future<DocumentSnapshot<Object?>> getGradeCourse(String gradeId);

  Future<DocumentSnapshot<Object?>> getLessonCourse(String lessonId);

  Future<QuerySnapshot<Object?>> getCourses();

  Future<QuerySnapshot<Object?>> getSubCourses(String courseId);

  Future<QuerySnapshot<Object?>> getCertificationCourses(
      String courseId, String subCourseId);

  Future<QuerySnapshot<Object?>> getGradeCourses(
      String courseId, String subCourseId, String certificationId);

  Future<QuerySnapshot<Object?>> getLessonCourses(String courseId,
      String subCourseId, String certificationId, String gradeId);
}

class CoursesDataSourceImpl implements CoursesDataSource {
  final CollectionReference _courseRef;
  final CollectionReference _subCourseRef;
  final CollectionReference _certificationRef;
  final CollectionReference _gradeRef;
  final CollectionReference _lessonRef;

  CoursesDataSourceImpl(
      {required CollectionReference courseRef,
      required CollectionReference subCourseRef,
      required CollectionReference certificationRef,
      required CollectionReference gradeRef,
      required CollectionReference lessonRef})
      : _courseRef = courseRef,
        _subCourseRef = subCourseRef,
        _certificationRef = certificationRef,
        _gradeRef = gradeRef,
        _lessonRef = lessonRef;

  @override
  Future<DocumentSnapshot<Object?>> getCourse(String courseId) async {
    return await _tryCatch(() async => await _courseRef.doc(courseId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getCourses() async {
    return await _tryCatchList(() async =>
        await _courseRef.orderBy("lastUpdated", descending: true).get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getSubCourse(String subCourseId) async {
    return await _tryCatch(
        () async => await _subCourseRef.doc(subCourseId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getSubCourses(String courseId) async {
    return await _tryCatchList(() async => await _subCourseRef
        .where("courseId", isEqualTo: courseId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getCertificationCourse(
      String certificationId) async {
    return await _tryCatch(
        () async => await _certificationRef.doc(certificationId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getCertificationCourses(
      String courseId, String subCourseId) async {
    return await _tryCatchList(() async => await _certificationRef
        .where("courseId", isEqualTo: courseId)
        .where("subCourseId", isEqualTo: subCourseId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getGradeCourse(String gradeId) async {
    return await _tryCatch(() async => await _gradeRef.doc(gradeId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getGradeCourses(
      String courseId, String subCourseId, String certificationId) async {
    return await _tryCatchList(() async => await _gradeRef
        .where("courseId", isEqualTo: courseId)
        .where("subCourseId", isEqualTo: subCourseId)
        .where("certificationId", isEqualTo: certificationId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getLessonCourse(String lessonId) async {
    return await _tryCatch(() async => await _lessonRef.doc(lessonId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getLessonCourses(String courseId,
      String subCourseId, String certificationId, String gradeId) async {
    return await _tryCatchList(() async => await _lessonRef
        .where("courseId", isEqualTo: courseId)
        .where("subCourseId", isEqualTo: subCourseId)
        .where("certificationId", isEqualTo: certificationId)
        .where("gradeId", isEqualTo: gradeId)
        .orderBy("lastUpdated", descending: true)
        .get());
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
}
