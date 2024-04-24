import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:academy/features/academy/domain/repository/event_enrolls_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetEventEnroll implements UseCase<Resource<EventEnroll>, String> {
  final EventEnrollsRepo _eventEnrollsRepo;

  GetEventEnroll({required EventEnrollsRepo eventEnrollsRepo}) : _eventEnrollsRepo = eventEnrollsRepo;

  @override
  Future<Resource<EventEnroll>> call(String id) async {
    return await _eventEnrollsRepo.getEventEnroll(id);
  }
}
