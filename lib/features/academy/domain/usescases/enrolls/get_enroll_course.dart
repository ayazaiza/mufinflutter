import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/enroll_course_repo.dart';

class GetEnrollCourse implements UseCase<Resource<EnrollCourse>, String> {
  final EnrollCourseRepo _enrollCourseRepo;

  GetEnrollCourse({required EnrollCourseRepo enrollCourseRepo}) : _enrollCourseRepo = enrollCourseRepo;

  @override
  Future<Resource<EnrollCourse>> call(String enrollId) async{
    return await _enrollCourseRepo.getEnrollCourse(enrollId);
  }
}
