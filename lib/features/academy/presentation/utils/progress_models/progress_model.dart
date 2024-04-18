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
  final List<LessonTopic> lessons;
  final bool isExpanded;

  ProgressGradeTopicModel({
    required this.gradeTopic,
    required this.gradeId,
    required this.size,
    required this.isExpanded,
    required this.status,
    required this.lessons,
  });

  ProgressGradeTopicModel copyWith({
    GradeTopic? gradeTopic,
    String? gradeId,
    int? size,
    bool? isExpanded,
    bool? status,
    List<LessonTopic>? lessons,
  }) {
    return ProgressGradeTopicModel(
      gradeTopic: gradeTopic ?? this.gradeTopic,
      gradeId: gradeId ?? this.gradeId,
      size: size ?? this.size,
      isExpanded: isExpanded ?? this.isExpanded,

      status: status ?? this.status,
      lessons: lessons ?? this.lessons,
    );
  }

  @override
  String toString() {
    return 'ProgressGradeTopicModel{gradeTopic: $gradeTopic, gradeId: $gradeId, size: $size, status: $status, lessons: $lessons}';
  }
}
