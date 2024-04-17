import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/certification_course.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/usecase/usecase_no_params.dart';

class GetCertificationCourses
    implements
        UseCase<Resource<List<CertificationCourse>>, Tuple2<String, String>> {
  final CoursesRepo _coursesRepo;

  GetCertificationCourses({required CoursesRepo coursesRepo})
      : _coursesRepo = coursesRepo;

  @override
  Future<Resource<List<CertificationCourse>>> call(
      Tuple2<String, String> params) async {
    return await _coursesRepo.getCertificationCourses(
        params.item1, params.item2);
  }
}


