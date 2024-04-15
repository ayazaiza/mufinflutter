import 'package:academy/core/utils/resource.dart';

import '../../data/models/student/student_model.dart';
import '../entities/student/student.dart';

abstract interface class StudentRepo {
  Future<Resource<String>> addStudent(StudentModel studentModel);

  Future<Resource<String>> updateStudent(StudentModel studentModel);

  Future<Resource<String>> deleteStudent(Student student);

  Future<Resource<List<Student>>> getStudents(String uuid);

  Future<Resource<Student>> getStudent(String studentId);

  Stream<Resource<List<Student>>> getStudentsStream(String uuid);

  Stream<Resource<Student>> getStudentStream(String studentId);
}
