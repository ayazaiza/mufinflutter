import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/repository/event_enrolls_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetEventEnrolls implements UseCase<Resource<List<EventEnroll>>, String> {
  final EventEnrollsRepo _eventEnrollsRepo;

  GetEventEnrolls({required EventEnrollsRepo eventEnrollsRepo}) : _eventEnrollsRepo = eventEnrollsRepo;

  @override
  Future<Resource<List<EventEnroll>>> call(String userId) async {
    return await _eventEnrollsRepo.getEventEnrolls(userId);
  }
}
