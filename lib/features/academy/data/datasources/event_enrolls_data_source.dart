import 'package:academy/features/academy/data/models/event_enrolls/event_enroll_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class EventEnrollsDataSource {
  Future<DocumentSnapshot<Object?>> getEventEnroll(String id);

  Future<QuerySnapshot<Object?>> getEventEnrolls(String userId);

  Future<QuerySnapshot<Object?>> getEventEnrollsByStudId(String studentId);

  Future<QuerySnapshot<Object?>> getEventEnrollHasDup(
      String eventTypeId, String studentId, String parentId);

  Future<void> addEventEnroll(EventEnrollModel eventEnrollModel);
}

class EventEnrollsDataSourceImpl implements EventEnrollsDataSource {
  final CollectionReference _reference;

  EventEnrollsDataSourceImpl({required CollectionReference reference})
      : _reference = reference;

  @override
  Future<void> addEventEnroll(EventEnrollModel eventEnrollModel) async {
    try {
      var id = _reference.doc().id;
      await _reference.doc(id).set(eventEnrollModel.copyWith(id: id).toMap());
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<DocumentSnapshot<Object?>> getEventEnroll(String id) async {
    try {
      return await _reference.doc(id).get();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<QuerySnapshot<Object?>> getEventEnrollHasDup(
      String eventTypeId, String studentId, String parentId) async {
    try {
      return await _reference
          .where("studentId", isEqualTo: studentId)
          .where("parentId", isEqualTo: parentId)
          .where("eventTypeId", isEqualTo: eventTypeId)
          .orderBy("lastUpdated", descending: true)
          .get();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<QuerySnapshot<Object?>> getEventEnrolls(String userId) async {
    try {
      return await _reference
          .where("parentId", isEqualTo: userId)
          .orderBy("lastUpdated", descending: true)
          .get();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<QuerySnapshot<Object?>> getEventEnrollsByStudId(
      String studentId) async {
    try {
      return await _reference
          .where("studentId", isEqualTo: studentId)
          .orderBy("lastUpdated", descending: true)
          .get();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
