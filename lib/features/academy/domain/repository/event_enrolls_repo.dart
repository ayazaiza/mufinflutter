import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/data/models/event_enrolls/event_enroll_model.dart';

import '../entities/event_enrolls/event_enroll.dart';

abstract interface class EventEnrollsRepo {
  Future<Resource<EventEnroll>> getEventEnroll(String id);

  Future<Resource<List<EventEnroll>>> getEventEnrolls(String userId);

  Future<Resource<List<EventEnroll>>> getEventEnrollsByStudId(
      String studentId);

  Future<Resource<List<EventEnroll>>> getEventEnrollHasDup(
      String eventTypeId, String studentId, String parentId);

  Future<Resource<String>> addEventEnroll(EventEnrollModel eventEnrollModel);
}
