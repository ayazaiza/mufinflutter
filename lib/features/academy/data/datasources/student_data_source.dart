import 'dart:developer';

import 'package:academy/core/error/app_exceptions.dart';
import 'package:academy/features/academy/data/models/student/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract interface class StudentDatasource {
  Future<void> addStudent(StudentModel studentModel);

  Future<void> updateStudent(StudentModel studentModel);

  Future<void> deleteStudent(String studentId);

  Future<QuerySnapshot<Object?>> getStudents(String uuid);

  Future<DocumentSnapshot<Object?>> getStudent(String studentId);

  Stream<QuerySnapshot<Object?>> getStudentsStream(String uuid);

  Stream<DocumentSnapshot<Object?>> getStudentStream(String studentId);
}

class StudentDatasourceImpl implements StudentDatasource {
  final CollectionReference _ref;

  StudentDatasourceImpl({required CollectionReference commonCollRef})
      : _ref = commonCollRef;

  @override
  Future<DocumentSnapshot<Object?>> getStudent(String studentId) async =>
      await _ref.doc(studentId).get();

  @override
  Future<QuerySnapshot<Object?>> getStudents(String uuid) async {
    try {
      return await _ref
          .where('userId',isEqualTo: uuid)
          .orderBy("lastUpdated", descending: true)
          .get();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Stream<QuerySnapshot<Object?>> getStudentsStream(String uuid) {
    try {
      return _ref
          .where('userId',isEqualTo: uuid)
          .orderBy("lastUpdated", descending: true)
          .snapshots();
    } catch (e) {
      log(e.toString());
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> addStudent(StudentModel studentModel) async {
    return await _tryCatch(() async {
      var id = _ref.doc().id;
      await _ref.doc(id).set(studentModel.copyWith(studentDocId: id).toMap());
    });
  }

  @override
  Future<void> deleteStudent(String studentId) async {
    return await _tryCatch(() async => await _ref.doc(studentId).delete());
  }

  @override
  Stream<DocumentSnapshot<Object?>> getStudentStream(String studentId) {
    return _ref.doc(studentId).snapshots();
  }

  @override
  Future<void> updateStudent(StudentModel studentModel) async {
    return await _tryCatch(() async =>
        await _ref.doc(studentModel.studentDocId).set(studentModel.toMap()));
  }

  Future<void> _tryCatch(Future<void> Function() func) async {
    try {
      return await func();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
