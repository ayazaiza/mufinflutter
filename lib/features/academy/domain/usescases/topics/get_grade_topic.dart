import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../entities/student/grade_topic.dart';

class GetGradeTopic implements UseCase<Resource<GradeTopic>, String> {
  final CompletedTopicRepo _completedTopicRepo;

  GetGradeTopic({required CompletedTopicRepo completedTopicRepo}) : _completedTopicRepo = completedTopicRepo;

  @override
  Future<Resource<GradeTopic>> call(String params) async {
    return await _completedTopicRepo.getGradeTopic(params);
  }
}
