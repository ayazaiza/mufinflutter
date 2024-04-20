import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/lesson_course.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:tuple/tuple.dart';

import '../../../../../core/usecase/usecase.dart';

class GetLessonCourses
    implements
        UseCase<Resource<List<LessonCourse>>,
            Tuple4<String, String, String, String>> {
  final CoursesRepo _coursesRepo;

  GetLessonCourses({required CoursesRepo coursesRepo})
      : _coursesRepo = coursesRepo;

  @override
  Future<Resource<List<LessonCourse>>> call(
      Tuple4<String, String, String, String> params) async {
    return await _coursesRepo.getLessonCourses(params.item1,
        params.item2, params.item3, params.item4);
  }
}

