import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/certification_course.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/courses/grade_course.dart';
import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/usecase/usecase_no_params.dart';

class GetGradeCourses
    implements UseCase<Resource<List<GradeCourse>>, Tuple3<String, String,String>> {
  final CoursesRepo _coursesRepo;

  GetGradeCourses({required CoursesRepo coursesRepo})
      : _coursesRepo = coursesRepo;

  @override
  Future<Resource<List<GradeCourse>>> call(Tuple3<String, String,String> params) async {
    return await _coursesRepo.getGradeCourses(
        params.item1, params.item2, params.item3);
  }
}

class GradeParams {
  final String courseId;
  final String subCourseId;
  final String certificationId;

  GradeParams(
      {required this.courseId,
      required this.subCourseId,
      required this.certificationId});
}
