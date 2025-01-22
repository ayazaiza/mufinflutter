import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/repository/event_enrolls_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetEventEnrollsStuId implements UseCase<Resource<List<EventEnroll>>, String> {
  final EventEnrollsRepo _eventEnrollsRepo;

  GetEventEnrollsStuId({required EventEnrollsRepo eventEnrollsRepo}) : _eventEnrollsRepo = eventEnrollsRepo;

  @override
  Future<Resource<List<EventEnroll>>> call(String studentId) async {
    return await _eventEnrollsRepo.getEventEnrollsByStudId(studentId);
  }
}
