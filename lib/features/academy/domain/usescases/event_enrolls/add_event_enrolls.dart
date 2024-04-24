import 'package:academy/features/academy/data/models/event_enrolls/event_enroll_model.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/repository/event_enrolls_repo.dart';
import 'package:academy/features/academy/domain/usescases/user/add_activity.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class AddEventEnrolls implements UseCase<Resource<String>, EventEnroll> {
  final EventEnrollsRepo _eventEnrollsRepo;
  final AddActivity _addActivity;

  AddEventEnrolls(
      {required EventEnrollsRepo eventEnrollsRepo,
      required AddActivity addActivity})
      : _eventEnrollsRepo = eventEnrollsRepo,
        _addActivity = addActivity;

  @override
  Future<Resource<String>> call(EventEnroll params) async {
    final EventEnrollModel eventEnrollModel = EventEnrollModel(
        eventName: params.eventName,
        eventTypeId: params.eventTypeId,
        id: params.id,
        parentId: params.parentId,
        parentName: params.parentName,
        parentEmail: params.parentEmail,
        parentPhone: params.parentPhone,
        studentName: params.studentName,
        studentId: params.studentId,
        studentAge: params.studentAge,
        gender: params.gender,
        studentDob: params.studentDob,
        studentFirstName: params.studentFirstName,
        studentLastName: params.studentLastName,
        timestamp: params.timestamp,
        lastUpdated: params.lastUpdated,
        status: params.status);
    var resp = await _eventEnrollsRepo.addEventEnroll(eventEnrollModel);
    await _addActivity(AddActivityParams(
        userId: eventEnrollModel.parentId,
        activity:
            "Successfully submitted your  ${eventEnrollModel.eventName} form for ${eventEnrollModel.studentName}"));
    return resp;
  }
}
