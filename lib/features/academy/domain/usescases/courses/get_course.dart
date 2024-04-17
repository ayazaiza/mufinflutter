import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/courses_repo.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetCourse implements UseCase<Resource<Course>, String> {
  final CoursesRepo _coursesRepo;

  GetCourse({required CoursesRepo coursesRepo}) : _coursesRepo = coursesRepo;

  @override
  Future<Resource<Course>> call(String params) async {
    return await _coursesRepo.getCourse(params);
  }
}
