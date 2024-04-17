import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../entities/student/lesson_topic.dart';

class GetLessonTopic implements UseCase<Resource<LessonTopic>, String> {
  final CompletedTopicRepo _completedTopicRepo;

  GetLessonTopic({required CompletedTopicRepo completedTopicRepo}) : _completedTopicRepo = completedTopicRepo;

  @override
  Future<Resource<LessonTopic>> call(String params) async {
    return await _completedTopicRepo.getLessonTopic(params);
  }
}
