import 'package:academy/features/academy/domain/entities/student/completed_topic.dart';
import 'package:academy/features/academy/domain/entities/student/lesson_topic.dart';

import '../../../domain/entities/student/grade_topic.dart';

class ProgressTopicModel {
  final CompletedTopic completedTopic;
  final String topicId;
  final int size;
  final bool status;
  final bool isExpanded;
  final List<ProgressGradeTopicModel> progressGradeTopicModel;

  ProgressTopicModel({
    required this.completedTopic,
    required this.topicId,
    required this.isExpanded,
    required this.size,
    required this.status,
    required this.progressGradeTopicModel,
  });

  ProgressTopicModel copyWith({
    CompletedTopic? completedTopic,
    String? topicId,
    int? size,
    bool? status,
    bool? isExpanded,
    List<ProgressGradeTopicModel>? progressGradeTopicModel,
  }) {
    return ProgressTopicModel(
      completedTopic: completedTopic ?? this.completedTopic,
      topicId: topicId ?? this.topicId,
      size: size ?? this.size,
      status: status ?? this.status,
      isExpanded: isExpanded ?? this.isExpanded,
      progressGradeTopicModel:
          progressGradeTopicModel ?? this.progressGradeTopicModel,
    );
  }

  @override
  String toString() {
    return 'ProgressTopicModel{completedTopic: $completedTopic, topicId: $topicId, size: $size, status: $status, progressGradeTopicModel: $progressGradeTopicModel}';
  }
}

class ProgressGradeTopicModel {
  final GradeTopic gradeTopic;
  final String gradeId;
  final int size;
  final bool status;
  final List<ProgressLessonTopicModel> progressLessonTopicModel;
  final bool isExpanded;

  ProgressGradeTopicModel({
    required this.gradeTopic,
    required this.gradeId,
    required this.size,
    required this.isExpanded,
    required this.status,
    required this.progressLessonTopicModel,
  });

  ProgressGradeTopicModel copyWith({
    GradeTopic? gradeTopic,
    String? gradeId,
    int? size,
    bool? isExpanded,
    bool? status,
    List<ProgressLessonTopicModel>? progressLessonTopicModel,
  }) {
    return ProgressGradeTopicModel(
      gradeTopic: gradeTopic ?? this.gradeTopic,
      gradeId: gradeId ?? this.gradeId,
      size: size ?? this.size,
      isExpanded: isExpanded ?? this.isExpanded,
      status: status ?? this.status,
      progressLessonTopicModel: progressLessonTopicModel ?? this.progressLessonTopicModel,
    );
  }

  @override
  String toString() {
    return 'ProgressGradeTopicModel{gradeTopic: $gradeTopic, gradeId: $gradeId, size: $size, status: $status, progressLessonTopicModel: $progressLessonTopicModel}';
  }
}

class ProgressLessonTopicModel {
  final LessonTopic lesson;
  final bool isExpanded;
  final String lessonId;
  final bool status;

  ProgressLessonTopicModel(
      {required this.lesson,
      required this.isExpanded,
      required this.lessonId,
      required this.status});

  ProgressLessonTopicModel copyWith({
    LessonTopic? lesson,
    bool? isExpanded,
    String? lessonId,
    bool? status,
  }) {
    return ProgressLessonTopicModel(
      lesson: lesson ?? this.lesson,
      isExpanded: isExpanded ?? this.isExpanded,
      lessonId: lessonId ?? this.lessonId,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'ProgressLessonTopicModel{lesson: $lesson, isExpanded: $isExpanded, lessonId: $lessonId, status: $status}';
  }
}
