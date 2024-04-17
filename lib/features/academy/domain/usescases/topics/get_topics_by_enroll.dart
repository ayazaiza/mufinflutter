import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/student/completed_topic.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/completed_topic_repo.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../entities/student/grade_topic.dart';

class GetTopicsByEnroll
    implements
        UseCase<Resource<List<CompletedTopic>>, Tuple2<String, String>> {
  final CompletedTopicRepo _completedTopicRepo;

  GetTopicsByEnroll({required CompletedTopicRepo completedTopicRepo})
      : _completedTopicRepo = completedTopicRepo;

  @override
  Future<Resource<List<CompletedTopic>>> call(
      Tuple2<String, String> params) async {
    return await _completedTopicRepo.getTopicsByEnroll(
        params.item1, params.item2);
  }
}
