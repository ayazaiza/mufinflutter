import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/grade_course.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetGradeCourse implements UseCase<Resource<GradeCourse>, String> {
  final CoursesRepo _coursesRepo;

  GetGradeCourse({required CoursesRepo coursesRepo})
      : _coursesRepo = coursesRepo;

  @override
  Future<Resource<GradeCourse>> call(String params) async {
    return await _coursesRepo.getGradeCourse(params);
  }
}
