import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:academy/features/academy/domain/repository/event_enrolls_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';

class GetEventEnrollsHasDup implements UseCase<Resource<List<EventEnroll>>, Tuple3<String,String,String>> {
  final EventEnrollsRepo _eventEnrollsRepo;

  GetEventEnrollsHasDup({required EventEnrollsRepo eventEnrollsRepo}) : _eventEnrollsRepo = eventEnrollsRepo;

  @override
  Future<Resource<List<EventEnroll>>> call(Tuple3<String,String,String> params) async {
    return await _eventEnrollsRepo.getEventEnrollHasDup(params.item3,params.item2,params.item1);
  }
}
