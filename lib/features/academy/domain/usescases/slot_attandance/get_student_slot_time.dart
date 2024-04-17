import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:academy/features/academy/domain/repository/student_slot_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';

class GetStudentSlotTime implements UseCase<Resource<StudentTimes>, String> {
  final StudentSlotRepo _studentSlotRepo;

  GetStudentSlotTime({required StudentSlotRepo studentSlotRepo})
      : _studentSlotRepo = studentSlotRepo;

  @override
  Future<Resource<StudentTimes>> call(String studentSlotDocId) async {
    return await _studentSlotRepo.getStudentSlotTime(studentSlotDocId);
  }
}

