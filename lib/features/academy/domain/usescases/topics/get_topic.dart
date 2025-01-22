import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../entities/student/completed_topic.dart';

class GetTopic implements UseCase<Resource<CompletedTopic>, String> {
  final CompletedTopicRepo _completedTopicRepo;

  GetTopic({required CompletedTopicRepo completedTopicRepo})
      : _completedTopicRepo = completedTopicRepo;

  @override
  Future<Resource<CompletedTopic>> call(String params) async {
    return await _completedTopicRepo.getTopic(params);
  }
}
