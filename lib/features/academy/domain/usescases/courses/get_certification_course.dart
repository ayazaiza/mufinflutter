import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/certification_course.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetCertificationCourse
    implements UseCase<Resource<CertificationCourse>, String> {
  final CoursesRepo _coursesRepo;

  GetCertificationCourse({required CoursesRepo coursesRepo})
      : _coursesRepo = coursesRepo;

  @override
  Future<Resource<CertificationCourse>> call(String params) async {
    return await _coursesRepo.getCertificationCourse(params);
  }
}
