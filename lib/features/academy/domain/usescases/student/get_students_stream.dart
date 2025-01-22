import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/repository/student_repo.dart';

import '../../../../../core/usecase/use_case_stream.dart';

class GetStudentsStream
    implements UseCaseStream<Resource<List<Student>>, String> {
  final StudentRepo _studentRepo;

  GetStudentsStream({required StudentRepo studentRepo})
      : _studentRepo = studentRepo;

  @override
  Stream<Resource<List<Student>>> call(String params) {
    return _studentRepo.getStudentsStream(params);
  }
}
