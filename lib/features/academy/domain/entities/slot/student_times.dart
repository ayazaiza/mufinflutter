import 'package:cloud_firestore/cloud_firestore.dart';

class StudentTimes {
  final String dayName;
  final String parentTimeId;
  final String timeId;
  final String time;
  final bool active;
  final String studentName;
  final String parentName;
  final String parentEmail;
  final String userId;
  final String studentId;
  final String courseId;
  final String courseName;
  final String subCourse;
  final String subCourseId;
  final String instructorName;
  final String instructorId;
  final String instructorEmail;
  final String status;
  final String note;
  final String studentTimeDocId;
  final String enrollId;
  final String prefSlotId;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  StudentTimes(
      {required this.dayName,
      required this.parentTimeId,
      required this.timeId,
      required this.time,
      required this.active,
      required this.studentName,
      required this.parentName,
      required this.parentEmail,
      required this.userId,
      required this.studentId,
      required this.courseId,
      required this.courseName,
      required this.subCourse,
      required this.subCourseId,
      required this.instructorName,
      required this.instructorId,
      required this.instructorEmail,
      required this.status,
      required this.note,
      required this.studentTimeDocId,
      required this.enrollId,
      required this.prefSlotId,
      required this.timestamp,
      required this.lastUpdated});

 
}
