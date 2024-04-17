import 'package:academy/core/utils/resource.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/enroll_course_repo.dart';

class HasEnrolled
    implements UseCase<Resource<bool>, Tuple4<String, String, String, String>> {
  final EnrollCourseRepo _enrollCourseRepo;

  HasEnrolled({required EnrollCourseRepo enrollCourseRepo})
      : _enrollCourseRepo = enrollCourseRepo;

  @override
  Future<Resource<bool>> call(
      Tuple4<String, String, String, String> params) async {
    return await _enrollCourseRepo.hasEnrolled(
        params.item1, params.item2, params.item3, params.item4);
  }
}
