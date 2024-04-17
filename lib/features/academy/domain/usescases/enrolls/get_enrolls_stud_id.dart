import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/enroll_course_repo.dart';

class GetEnrollsStudId implements UseCase<Resource<List<EnrollCourse>>, String> {
  final EnrollCourseRepo _enrollCourseRepo;

  GetEnrollsStudId({required EnrollCourseRepo enrollCourseRepo}) : _enrollCourseRepo = enrollCourseRepo;

  @override
  Future<Resource<List<EnrollCourse>>> call(String studentId) async{
    return await _enrollCourseRepo.getEnrollListByStuId(studentId);
  }
}
