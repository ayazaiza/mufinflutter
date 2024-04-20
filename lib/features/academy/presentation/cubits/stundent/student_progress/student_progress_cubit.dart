import 'dart:developer';

import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/student/completed_topic.dart';
import 'package:academy/features/academy/domain/entities/student/grade_topic.dart';
import 'package:academy/features/academy/domain/entities/student/lesson_topic.dart';
import 'package:academy/features/academy/presentation/utils/progress_models/progress_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../../domain/usescases/courses/get_grade_courses.dart';
import '../../../../domain/usescases/courses/get_lesson_courses.dart';
import '../../../../domain/usescases/topics/get_grade_topics.dart';
import '../../../../domain/usescases/topics/get_lesson_topics.dart';
import '../../../../domain/usescases/topics/get_topics_by_enroll.dart';

part 'student_progress_state.dart';

part 'student_progress_cubit.freezed.dart';

class StudentProgressCubit extends Cubit<StudentProgressState> {
  final GetTopicsByEnroll _getTopicsByEnroll;
  final GetLessonTopics _getLessonTopics;
  final GetGradeTopics _getGradeTopics;
  final GetGradeCourses _getGradeCourses;
  final GetLessonCourses _getLessonCourses;
  final String _studentId;
  final String _enrollId;

  StudentProgressCubit(
      {required GetTopicsByEnroll getTopicsByEnroll,
      required GetLessonTopics getLessonTopics,
      required GetGradeTopics getGradeTopics,
      required GetGradeCourses getGradeCourses,
      required GetLessonCourses getLessonCourses,
      required String studentId,
      required String enrollId})
      : _getTopicsByEnroll = getTopicsByEnroll,
        _getLessonTopics = getLessonTopics,
        _getGradeTopics = getGradeTopics,
        _getGradeCourses = getGradeCourses,
        _getLessonCourses = getLessonCourses,
        _enrollId = enrollId,
        _studentId = studentId,
        super(StudentProgressState(studentId: studentId, enrollId: enrollId));

  void fetchData() async {
    var topics = await _getTopicsByEnroll(Tuple2(_enrollId, _studentId));
    if (topics.data == null || topics.data!.isEmpty) {
      emit(state.copyWith(
          isLoading: false, error: topics.error ?? AppStrings.dataNotFound));
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
      if (grades.data == null || grades.data!.isEmpty) {
        continue;
      }
      var gradeCourses = await _getGradeCourses(
          Tuple3(topic.courseId, topic.subCourseId, topic.certificationId));
      emit(state.copyWith(
          grades: grades.data ?? state.grades,
          lists: state.lists
              .map((e) => topic.topicId == e.topicId
                  ? e.copyWith(
                      size: gradeCourses.data?.length ?? e.size,
                      progressGradeTopicModel: grades.data
                          ?.map((g) => ProgressGradeTopicModel(
                              gradeTopic: g,
                              gradeId: g.gradeId,
                              size: 0,
                              isExpanded: false,
                              status: g.status,
                              progressLessonTopicModel: []))
                          .toList())
                  : e)
              .toList()));
      for (var l = 0; l < state.grades.length; l++) {
        var grade = state.grades[l];
        var lessons =
            await _getLessonTopics(Tuple2(topic.topicId, grade.gradeTopicId));
        if (lessons.data == null || lessons.data!.isEmpty) {
          continue;
        }
        var lessonCourses = await _getLessonCourses.call(Tuple4(grade.courseId,
            grade.subCourseId, grade.certificationId, grade.gradeId));
        emit(state.copyWith(
            lessons: lessons.data ?? state.lessons,
            lists: state.lists
                .map((e) => e.copyWith(
                    progressGradeTopicModel: e.progressGradeTopicModel
                        .map((g) =>
                            g.gradeTopic.gradeTopicId == grade.gradeTopicId
                                ? g.copyWith(
                                    size: lessonCourses.data?.length ?? g.size,
                                    progressLessonTopicModel: lessons.data
                                        ?.map((l) => ProgressLessonTopicModel(
                                            lesson: l,
                                            isExpanded: false,
                                            lessonId: l.lessonId,
                                            status: l.status))
                                        .toList())
                                : g)
                        .toList()))
                .toList()));
      }
    }
    emit(state.copyWith(isLoading: false));
    log(state.toString());
  }

  void topicExpand(bool isExpand, String topicId) {
    emit(state.copyWith(
        lists: state.lists
            .map((e) =>
                e.topicId == topicId ? e.copyWith(isExpanded: isExpand) : e)
            .toList()));
  }

  void gradeExpand(bool isExpand, String gradeId) {
    emit(state.copyWith(
        lists: state.lists
            .map((t) => t.copyWith(
                progressGradeTopicModel: t.progressGradeTopicModel
                    .map((g) => g.gradeId == gradeId
                        ? g.copyWith(isExpanded: isExpand)
                        : g)
                    .toList()))
            .toList()));
  }

  void lessonExpand(bool isExpand, String lessonId) {
    emit(state.copyWith(
        lists: state.lists
            .map((t) => t.copyWith(
                progressGradeTopicModel: t.progressGradeTopicModel
                    .map((g) => g.copyWith(
                        progressLessonTopicModel: g.progressLessonTopicModel
                            .map((l) => l.lessonId == lessonId
                                ? l.copyWith(isExpanded: isExpand)
                                : l)
                            .toList()))
                    .toList()))
            .toList()));
  }
}
