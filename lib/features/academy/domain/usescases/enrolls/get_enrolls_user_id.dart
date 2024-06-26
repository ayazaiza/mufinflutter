import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/enroll_course_repo.dart';

class GetEnrollsUserId implements UseCase<Resource<List<EnrollCourse>>, String> {
  final EnrollCourseRepo _enrollCourseRepo;

  GetEnrollsUserId({required EnrollCourseRepo enrollCourseRepo}) : _enrollCourseRepo = enrollCourseRepo;

  @override
  Future<Resource<List<EnrollCourse>>> call(String userId) async{
    return await _enrollCourseRepo.getEnrollListByUUId(userId);
  }
}
