import 'package:academy/features/academy/domain/entities/student/student_attendance.dart';
import 'package:academy/features/academy/domain/repository/student_slot_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class GetAttendances
    implements UseCase<Resource<List<StudentAttendance>>, String> {
  final StudentSlotRepo _studentSlotRepo;

  GetAttendances({required StudentSlotRepo studentSlotRepo})
      : _studentSlotRepo = studentSlotRepo;

  @override
  Future<Resource<List<StudentAttendance>>> call(
      String studentTimeDocId) async {
    return await _studentSlotRepo.getAttendances(studentTimeDocId);
  }
}
