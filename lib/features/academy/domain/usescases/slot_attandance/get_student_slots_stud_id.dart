import 'package:academy/features/academy/domain/repository/student_slot_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';
import '../../entities/slot/student_times.dart';

class GetStudentSlotsStudId
    implements UseCase<Resource<List<StudentTimes>>, String> {
  final StudentSlotRepo _studentSlotRepo;

  GetStudentSlotsStudId({required StudentSlotRepo studentSlotRepo})
      : _studentSlotRepo = studentSlotRepo;

  @override
  Future<Resource<List<StudentTimes>>> call(String studentId) async {
    return await _studentSlotRepo.getStudentSlotsByStudentId(studentId);
  }
}
