import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/student/lesson_topic.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';

class GetLessonTopics
    implements UseCase<Resource<List<LessonTopic>>, Tuple2<String, String>> {
  final CompletedTopicRepo _completedTopicRepo;

  GetLessonTopics({required CompletedTopicRepo completedTopicRepo})
      : _completedTopicRepo = completedTopicRepo;

  @override
  Future<Resource<List<LessonTopic>>> call(
      Tuple2<String, String> params) async {
    return await _completedTopicRepo.getLessonTopics(
        params.item1, params.item2);
  }
}
