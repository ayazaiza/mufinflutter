import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/enroll_course_repo.dart';

class GetEnrollsStudUUId
    implements UseCase<Resource<List<EnrollCourse>>, Tuple2<String, String>> {
  final EnrollCourseRepo _enrollCourseRepo;

  GetEnrollsStudUUId({required EnrollCourseRepo enrollCourseRepo})
      : _enrollCourseRepo = enrollCourseRepo;

  @override
  Future<Resource<List<EnrollCourse>>> call(
      Tuple2<String, String> params) async {
    return await _enrollCourseRepo.getEnrollListByStudIdUUId(
        params.item1, params.item2);
  }
}
