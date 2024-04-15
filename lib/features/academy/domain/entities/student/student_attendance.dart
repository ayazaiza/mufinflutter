import 'package:cloud_firestore/cloud_firestore.dart';

class StudentAttendance {
  final String attendanceId;
  final String studentName;
  final String studentId;
  final String parentName;
  final String userId;
  final String instructorId;
  final String instructorName;
  final String time;
  final String date;
  final String note;
  final String courseName;
  final String courseId;
  final String subCourseName;
  final String subCourseId;
  final String studentTimeDocId;
  final String parentTimeId;
  final String timeId;
  final String instructorEmail;
  final String dayName;
  final int index;
  final String prefSlotId;
  final String enrollId;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  StudentAttendance(
      {required this.attendanceId,
      required this.studentName,
      required this.studentId,
      required this.parentName,
      required this.userId,
      required this.instructorId,
      required this.instructorName,
      required this.time,
      required this.date,
      required this.note,
      required this.courseName,
      required this.courseId,
      required this.subCourseName,
      required this.subCourseId,
      required this.studentTimeDocId,
      required this.parentTimeId,
      required this.timeId,
      required this.instructorEmail,
      required this.dayName,
      required this.index,
      required this.prefSlotId,
      required this.enrollId,
      required this.timestamp,
      required this.lastUpdated});

}
