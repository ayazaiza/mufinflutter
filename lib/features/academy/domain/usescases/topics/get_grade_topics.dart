import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../entities/student/grade_topic.dart';

class GetGradeTopics implements UseCase<Resource<List<GradeTopic>>, String> {
  final CompletedTopicRepo _completedTopicRepo;

  GetGradeTopics({required CompletedTopicRepo completedTopicRepo}) : _completedTopicRepo = completedTopicRepo;

  @override
  Future<Resource<List<GradeTopic>>> call(String params) async {
    return await _completedTopicRepo.getGradeTopics(params);
  }
}
