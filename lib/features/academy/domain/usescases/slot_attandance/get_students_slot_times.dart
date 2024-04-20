import 'package:academy/features/academy/domain/repository/student_slot_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/resource.dart';
import '../../entities/slot/student_times.dart';

class GetStudentsSlotTimes
    implements UseCase<Resource<List<StudentTimes>>, Tuple2<String, String>> {
  final StudentSlotRepo _studentSlotRepo;

  GetStudentsSlotTimes({required StudentSlotRepo studentSlotRepo})
      : _studentSlotRepo = studentSlotRepo;

  @override
  Future<Resource<List<StudentTimes>>> call(
      Tuple2<String, String> param) async {
    return await _studentSlotRepo.getStudentsSlotTimes(
        param.item1, param.item2);
  }
}
