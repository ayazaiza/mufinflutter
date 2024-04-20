import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';

import '../../../../../core/usecase/usecase_no_params.dart';

class GetCourses implements UseCaseNoParams<Resource<List<Course>>> {
  final CoursesRepo _coursesRepo;

  GetCourses({required CoursesRepo coursesRepo}) : _coursesRepo = coursesRepo;

  @override
  Future<Resource<List<Course>>> call() async{
    return await _coursesRepo.getCourses();
  }
}
