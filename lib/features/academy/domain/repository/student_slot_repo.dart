import 'package:academy/core/utils/resource.dart';
import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:academy/features/academy/domain/entities/student/student_attendance.dart';

abstract interface class StudentSlotRepo {
  Future<Resource<List<StudentAttendance>>> getAllAttendance(
      String enrollId, String studentId);

  Future<Resource<List<StudentAttendance>>> getAttendances(
      String studentTimeDocId);

  Future<Resource<List<StudentAttendance>>> getAttendanceByStudIdSlotTimeId(
      String studentId, String studentTimeDocId);

  Future<Resource<StudentAttendance>> getAttendance(String attendanceId);

  Future<Resource<List<StudentTimes>>> getStudentSlotsByParentId(String userId);

  Future<Resource<List<StudentTimes>>> getStudentSlotsByStudentId(
      String studentId);

  Future<Resource<StudentTimes>> getStudentSlotTime(String studentSlotDocId);
}


