import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/lesson_course.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetLessonCourse implements UseCase<Resource<LessonCourse>, String> {
  final CoursesRepo _coursesRepo;

  GetLessonCourse({required CoursesRepo coursesRepo})
      : _coursesRepo = coursesRepo;

  @override
  Future<Resource<LessonCourse>> call(String params) async {
    return await _coursesRepo.getLessonCourse(params);
  }
}
