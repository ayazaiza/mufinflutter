import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/sub_course.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetSubCourses implements UseCase<Resource<List<SubCourse>>,String> {
  final CoursesRepo _coursesRepo;

  GetSubCourses({required CoursesRepo coursesRepo}) : _coursesRepo = coursesRepo;

  @override
  Future<Resource<List<SubCourse>>> call(String courseId) async{
    return await _coursesRepo.getSubCourses(courseId);
  }
}
