part of 'student_progress_cubit.dart';

@freezed
class StudentProgressState with _$StudentProgressState {
  const factory StudentProgressState(
      {@Default(true) bool isLoading,
      String? studentId,
      String? enrollId,
      String? error,
      @Default([]) List<CompletedTopic> topics,
      @Default([]) List<GradeTopic> grades,
      @Default([]) List<LessonTopic> lessons,
      @Default([]) List<ProgressTopicModel> lists}) = _Initial;
}
