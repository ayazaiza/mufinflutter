import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class StudentSlotDataSource {
  Future<QuerySnapshot<Object?>> getAllAttendance(
      String enrollId, String studentId);

  Future<QuerySnapshot<Object?>> getAttendances(String studentTimeDocId);

  Future<QuerySnapshot<Object?>> getAttendanceByStudIdSlotTimeId(
      String studentId, String studentTimeDocId);

  Future<DocumentSnapshot<Object?>> getAttendance(String attendanceId);

  Future<QuerySnapshot<Object?>> getStudentSlotsByParentId(String userId);

  Future<QuerySnapshot<Object?>> getStudentSlotsByParentIdWithStatus(
      String userId, String status);

  Future<QuerySnapshot<Object?>> getStudentSlotsByStudentId(String studentId);

  Future<DocumentSnapshot<Object?>> getStudentSlotTime(String studentSlotDocId);

  Future<QuerySnapshot<Object?>> getStudentsSlotTimes(
      String enrollId, String instructorId);
}

class StudentSlotDataSourceImpl implements StudentSlotDataSource {
  final CollectionReference _studentSlotTimeRef;
  final CollectionReference _studentAttendanceRef;

  StudentSlotDataSourceImpl(
      {required CollectionReference studentSlotTimeRef,
      required CollectionReference studentAttendanceRef})
      : _studentSlotTimeRef = studentSlotTimeRef,
        _studentAttendanceRef = studentAttendanceRef;

  @override
  Future<QuerySnapshot<Object?>> getAllAttendance(
      String enrollId, String studentId) async {
    return await _tryCatchList(() async => await _studentAttendanceRef
        .where("enrollId", isEqualTo: enrollId)
        .where("studentId", isEqualTo: studentId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getAttendance(String attendanceId) async {
    return await _tryCatch(
        () async => await _studentAttendanceRef.doc(attendanceId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getAttendanceByStudIdSlotTimeId(
      String studentId, String studentTimeDocId) async {
    return await _tryCatchList(() async => await _studentAttendanceRef
        .where("studentId", isEqualTo: studentId)
        .where("studentTimeDocId", isEqualTo: studentTimeDocId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getAttendances(String studentTimeDocId) async {
    return await _tryCatchList(() async => await _studentAttendanceRef
        .where("studentTimeDocId", isEqualTo: studentTimeDocId)
        .orderBy("timestamp", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getStudentSlotTime(
      String studentSlotDocId) async {
    return await _tryCatch(
        () async => await _studentSlotTimeRef.doc(studentSlotDocId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getStudentSlotsByParentId(
      String userId) async {
    return await _tryCatchList(() async => await _studentSlotTimeRef
        .where("userId", isEqualTo: userId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getStudentSlotsByStudentId(
      String studentId) async {
    return await _tryCatchList(() async => await _studentSlotTimeRef
        .where("studentId", isEqualTo: studentId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getStudentsSlotTimes(
      String enrollId, String instructorId) async {
    return await _tryCatchList(() async => await _studentSlotTimeRef
        .where("enrollId", isEqualTo: enrollId)
        .where("instructorId", isEqualTo: instructorId)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getStudentSlotsByParentIdWithStatus(
      String userId, String status) async {
    return await _tryCatchList(() async => await _studentSlotTimeRef
        .where("userId", isEqualTo: userId)
        .where("status", isEqualTo: status)
        .orderBy("lastUpdated", descending: true)
        .get());
  }

  // String _generateId() {
  //   return _studentSlotTimeRef.doc().id;
  // }

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
