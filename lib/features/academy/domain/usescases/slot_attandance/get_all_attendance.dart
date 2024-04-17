import 'package:academy/features/academy/domain/entities/student/student_attendance.dart';
import 'package:academy/features/academy/domain/repository/student_slot_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class GetAllAttendance
    implements
        UseCase<Resource<List<StudentAttendance>>, Tuple2<String,String>> {
  final StudentSlotRepo _studentSlotRepo;

  GetAllAttendance({required StudentSlotRepo studentSlotRepo})
      : _studentSlotRepo = studentSlotRepo;

  @override
  Future<Resource<List<StudentAttendance>>> call(
      Tuple2<String,String> params) async {
    return await _studentSlotRepo.getAllAttendance(
        params.item1, params.item2);
  }
}

