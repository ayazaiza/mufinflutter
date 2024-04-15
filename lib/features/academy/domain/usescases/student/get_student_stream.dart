import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/usecaseStream.dart';

class GetStudentStream implements UseCaseStream<Resource<Student>, String> {
  final StudentRepo _studentRepo;

  GetStudentStream({required StudentRepo studentRepo})
      : _studentRepo = studentRepo;

  @override
  Stream<Resource<Student>> call(String params) {
    return _studentRepo.getStudentStream(params);
  }
}
