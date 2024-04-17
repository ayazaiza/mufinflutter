import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetStudent implements UseCase<Resource<Student>, String> {
  final StudentRepo _studentRepo;

  GetStudent({required StudentRepo studentRepo}) : _studentRepo = studentRepo;

  @override
  Future<Resource<Student>> call(String params) async{
    return await _studentRepo.getStudent(params);
  }
}
