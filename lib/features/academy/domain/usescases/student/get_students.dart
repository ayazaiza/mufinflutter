import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/usecase.dart';

class GetStudents implements UseCase<Resource<List<Student>>, String> {
  final StudentRepo _studentRepo;

  GetStudents({required StudentRepo studentRepo}) : _studentRepo = studentRepo;

  @override
  Future<Resource<List<Student>>> call(String uuid) async{
    return await _studentRepo.getStudents(uuid);
  }
}
