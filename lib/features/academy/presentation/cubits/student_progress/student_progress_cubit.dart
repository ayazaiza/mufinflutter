import 'dart:developer';

import 'package:academy/features/academy/domain/entities/student/completed_topic.dart';
import 'package:academy/features/academy/domain/entities/student/grade_topic.dart';
import 'package:academy/features/academy/domain/entities/student/lesson_topic.dart';
import 'package:academy/features/academy/presentation/utils/progress_models/progress_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../domain/usescases/topics/get_grade_topics.dart';
import '../../../domain/usescases/topics/get_lesson_topics.dart';
import '../../../domain/usescases/topics/get_topics_by_enroll.dart';

part 'student_progress_state.dart';

part 'student_progress_cubit.freezed.dart';

class StudentProgressCubit extends Cubit<StudentProgressState> {
  final GetTopicsByEnroll _getTopicsByEnroll;
  final GetLessonTopics _getLessonTopics;
  final GetGradeTopics _getGradeTopics;
  final String _studentId;
  final String _enrollId;

  StudentProgressCubit(
      {required GetTopicsByEnroll getTopicsByEnroll,
      required GetLessonTopics getLessonTopics,
      required GetGradeTopics getGradeTopics,
      required String studentId,
      required String enrollId})
      : _getTopicsByEnroll = getTopicsByEnroll,
        _getLessonTopics = getLessonTopics,
        _getGradeTopics = getGradeTopics,
        _enrollId = enrollId,
        _studentId = studentId,
        super(StudentProgressState(studentId: studentId, enrollId: enrollId));

  void fetchData() async {
    var topics = await _getTopicsByEnroll(Tuple2(_enrollId, _studentId));
    if (topics.data == null) {
      emit(state.copyWith(isLoading: false, error: topics.error));
      return;
    }
    emit(state.copyWith(
        topics: topics.data ?? state.topics,
        lists: topics.data
                ?.map((e) => ProgressTopicModel(
                    completedTopic: e,
                    topicId: e.topicId,
                    size: 0,
                    isExpanded: false,
                    status: e.status,
                    progressGradeTopicModel: []))
                .toList() ??
            state.lists));
    for (var g = 0; g < state.topics.length; g++) {
      var topic = state.topics[g];
      var grades = await _getGradeTopics(topic.topicId);
      if (grades.data == null) {
        continue;
      }
      emit(state.copyWith(
          grades: grades.data ?? state.grades,
          lists: state.lists
              .map((e) => e.copyWith(
                  progressGradeTopicModel: grades.data
                      ?.map((e2) => ProgressGradeTopicModel(
                          gradeTopic: e2,
                          gradeId: e2.gradeId,
                          size: 0,
                          isExpanded: false,
                          status: e2.status,
                          lessons: []))
                      .toList()))
              .toList()));
      for (var l = 0; l < state.grades.length; l++) {
        var grade = state.grades[l];
        var lessons =
            await _getLessonTopics(Tuple2(topic.topicId, grade.gradeTopicId));
        if (lessons.data == null) {
          continue;
        }
        emit(state.copyWith(
            lessons: lessons.data ?? state.lessons,
            lists: state.lists
                .map((e) => e.copyWith(
                    progressGradeTopicModel: e.progressGradeTopicModel
                        .map((e) => e.copyWith(lessons: lessons.data))
                        .toList()))
                .toList()));
      }
    }
    emit(state.copyWith(isLoading: false));
    log(state.toString());
  }

  void topicExpand(bool isExpand, String id) {
    emit(state.copyWith(
        lists: state.lists
            .map((e) => e.topicId == id ? e.copyWith(isExpanded: isExpand) : e)
            .toList()));
  }
}
