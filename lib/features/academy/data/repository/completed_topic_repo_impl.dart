import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/datasources/completed_topic_data_source.dart';
import 'package:academy/features/academy/data/models/student/completed_topic_model.dart';
import 'package:academy/features/academy/data/models/student/grade_topic_model.dart';
import 'package:academy/features/academy/data/models/student/lesson_topic_model.dart';

import 'package:academy/features/academy/domain/entities/student/completed_topic.dart';

import 'package:academy/features/academy/domain/entities/student/grade_topic.dart';

import 'package:academy/features/academy/domain/entities/student/lesson_topic.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/error/app_exceptions.dart';
import '../../domain/repository/completed_topic_repo.dart';

class CompletedTopicRepoImpl implements CompletedTopicRepo {
  final CompletedTopicDataSource _completedTopicDataSource;

  CompletedTopicRepoImpl(
      {required CompletedTopicDataSource completedTopicDataSource})
      : _completedTopicDataSource = completedTopicDataSource;

  @override
  Future<Resource<GradeTopic>> getGradeTopic(String gradeTopicId) async {
    try {
      var resp = await _completedTopicDataSource.getGradeTopic(gradeTopicId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(GradeTopicModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<GradeTopic>>> getGradeTopics(String topicId) async {
    try {
      var resp = await _completedTopicDataSource.getGradeTopics(topicId);
      return DataSuccess(resp.toMapList
          .map((event) => GradeTopicModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<LessonTopic>> getLessonTopic(String lessonTopicId) async {
    try {
      var resp = await _completedTopicDataSource.getLessonTopic(lessonTopicId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(LessonTopicModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<LessonTopic>>> getLessonTopics(
      String topicId, String gradeTopicId) async {
    try {
      var resp = await _completedTopicDataSource.getLessonTopics(
          topicId, gradeTopicId);
      return DataSuccess(resp.toMapList
          .map((event) => LessonTopicModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<CompletedTopic>> getTopic(String topicId) async {
    try {
      var resp = await _completedTopicDataSource.getTopic(topicId);
      if (!resp.exists) {
        throw const ServerException(message: AppStrings.dataNotFound);
      }
      return DataSuccess(CompletedTopicModel.fromMap(resp.snaps));
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<CompletedTopic>>> getTopics(
      String studentId, String studentTimeDocId) async {
    try {
      var resp = await _completedTopicDataSource.getTopics(
          studentId, studentTimeDocId);
      return DataSuccess(resp.toMapList
          .map((event) => CompletedTopicModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<CompletedTopic>>> getTopicsByEnroll(
      String enrollId, String studentId) async {
    try {
      var resp = await _completedTopicDataSource.getTopicsByEnroll(
          enrollId, studentId);
      return DataSuccess(resp.toMapList
          .map((event) => CompletedTopicModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }

  @override
  Future<Resource<List<CompletedTopic>>> getTopicsByEnrollPrefSlot(
      String enrollId, String prefSlotId) async {
    try {
      var resp = await _completedTopicDataSource.getTopicsByEnrollPrefSlot(
          enrollId, prefSlotId);
      return DataSuccess(resp.toMapList
          .map((event) => CompletedTopicModel.fromMap(event))
          .toList());
    } on ServerException catch (e) {
      return DataError(e.message);
    }
  }
}
