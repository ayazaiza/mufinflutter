import 'package:academy/features/academy/domain/usescases/student/add_student.dart';
import 'package:academy/features/academy/domain/usescases/student/delete_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student_stream.dart';
import 'package:academy/features/academy/domain/usescases/student/get_students.dart';
import 'package:academy/features/academy/domain/usescases/student/update_student.dart';

import 'get_students_stream.dart';

class StudentUseCase {
  final AddStudent addStudent;
  final DeleteStudent deleteStudent;
  final GetStudent getStudent;
  final GetStudents getStudents;
  final GetStudentStream getStudentStream;
  final GetStudentsStream getStudentsStream;
  final UpdateStudent updateStudent;

  StudentUseCase(
      {required this.addStudent,
      required this.deleteStudent,
      required this.getStudent,
      required this.getStudents,
      required this.getStudentStream,
      required this.getStudentsStream,
      required this.updateStudent});
}
