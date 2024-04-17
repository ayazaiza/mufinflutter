import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/student/completed_topic.dart';
import 'package:academy/features/academy/domain/entities/student/grade_topic.dart';
import 'package:academy/features/academy/domain/entities/student/lesson_topic.dart';

abstract interface class CompletedTopicRepo {
  Future<Resource<GradeTopic>> getGradeTopic(String gradeTopicId);

  Future<Resource<List<GradeTopic>>> getGradeTopics(String topicId);

  Future<Resource<LessonTopic>> getLessonTopic(String lessonTopicId);

  Future<Resource<List<LessonTopic>>> getLessonTopics(
      String topicId, String gradeTopicId);

  Future<Resource<CompletedTopic>> getTopic(String topicId);

  Future<Resource<List<CompletedTopic>>> getTopics(
      String studentId, String studentTimeDocId);

  Future<Resource<List<CompletedTopic>>> getTopicsByEnroll(
      String enrollId, String studentId);

  Future<Resource<List<CompletedTopic>>> getTopicsByEnrollPrefSlot(
      String enrollId, String prefSlotId);
}
