import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/error/app_exceptions.dart';

abstract interface class CompletedTopicDataSource {
  Future<DocumentSnapshot<Object?>> getGradeTopic(String gradeTopicId);

  Future<QuerySnapshot<Object?>> getGradeTopics(String topicId);

  Future<DocumentSnapshot<Object?>> getLessonTopic(String lessonTopicId);

  Future<QuerySnapshot<Object?>> getLessonTopics(
      String topicId, String gradeTopicId);

  Future<DocumentSnapshot<Object?>> getTopic(String topicId);

  Future<QuerySnapshot<Object?>> getTopics(
      String studentId, String studentTimeDocId);

  Future<QuerySnapshot<Object?>> getTopicsByEnroll(
      String enrollId, String studentId);

  Future<QuerySnapshot<Object?>> getTopicsByEnrollPrefSlot(
      String enrollId, String prefSlotId);
}

class CompletedTopicDataSourceImpl extends CompletedTopicDataSource {
  final CollectionReference _completedTopicRef;
  final CollectionReference _gradeTopicRef;
  final CollectionReference _lessonTopicRef;

  CompletedTopicDataSourceImpl(
      {required CollectionReference completedTopicRef,
      required CollectionReference gradeTopicRef,
      required CollectionReference lessonTopicRef})
      : _completedTopicRef = completedTopicRef,
        _gradeTopicRef = gradeTopicRef,
        _lessonTopicRef = lessonTopicRef;

  @override
  Future<DocumentSnapshot<Object?>> getGradeTopic(String gradeTopicId) async {
    return await _tryCatch(
        () async => await _gradeTopicRef.doc(gradeTopicId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getGradeTopics(String topicId) async {
    return await _tryCatchList(() async => await _gradeTopicRef
        .where("topicId", isEqualTo: topicId)
        .orderBy("timestamp", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getLessonTopic(String lessonTopicId) async {
    return await _tryCatch(
        () async => await _lessonTopicRef.doc(lessonTopicId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getLessonTopics(
      String topicId, String gradeTopicId) async {
    return await _tryCatchList(() async => await _lessonTopicRef
        .where("topicId", isEqualTo: topicId)
        .where("gradeTopicId", isEqualTo: gradeTopicId)
        .orderBy("timestamp", descending: true)
        .get());
  }

  @override
  Future<DocumentSnapshot<Object?>> getTopic(String topicId) async {
    return await _tryCatch(
        () async => await _completedTopicRef.doc(topicId).get());
  }

  @override
  Future<QuerySnapshot<Object?>> getTopics(
      String studentId, String studentTimeDocId) async {
    return await _tryCatchList(() async => await _completedTopicRef
        .where("studentId", isEqualTo: studentId)
        .where("studentTimeDocId", isEqualTo: studentTimeDocId)
        .orderBy("timestamp", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getTopicsByEnroll(
      String enrollId, String studentId) async {
    return await _tryCatchList(() async => await _completedTopicRef
        .where("enrollId", isEqualTo: enrollId)
        .where("studentId", isEqualTo: studentId)
        .orderBy("timestamp", descending: true)
        .get());
  }

  @override
  Future<QuerySnapshot<Object?>> getTopicsByEnrollPrefSlot(
      String enrollId, String prefSlotId) async {
    return await _tryCatchList(() async => await _completedTopicRef
        .where("enrollId", isEqualTo: enrollId)
        .where("prefSlotId", isEqualTo: prefSlotId)
        .orderBy("timestamp", descending: true)
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
