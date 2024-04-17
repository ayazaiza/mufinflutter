import 'package:academy/features/academy/domain/entities/student/student_attendance.dart';
import 'package:academy/features/academy/domain/repository/student_slot_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class GetAttendance implements UseCase<Resource<StudentAttendance>, String> {
  final StudentSlotRepo _studentSlotRepo;

  GetAttendance({required StudentSlotRepo studentSlotRepo})
      : _studentSlotRepo = studentSlotRepo;

  @override
  Future<Resource<StudentAttendance>> call(String params) async {
    return await _studentSlotRepo.getAttendance(params);
  }
}

