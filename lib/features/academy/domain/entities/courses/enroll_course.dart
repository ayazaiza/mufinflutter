import 'package:cloud_firestore/cloud_firestore.dart';

class EnrollCourse {
  final String studentName;
  final String studentDocumentId;
  final String studentAge;
  final String studentGender;
  final String studentDob;
  final String parentName;
  final String parentUserId;
  final String parentEmail;
  final String status;
  final String reason;
  final String courseName;
  final String courseId;
  final String subCourseName;
  final String subCourseId;
  final String notes;
  final String enrollDocId;
  final String instructorId;
  final String instructorName;
  final String instructorEmail;
  final String prefSlotId;
  final String instructorPhone;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  EnrollCourse(
      {required this.studentName,
      required this.studentDocumentId,
      required this.studentAge,
      required this.studentGender,
      required this.studentDob,
      required this.parentName,
      required this.parentUserId,
      required this.parentEmail,
      required this.status,
      required this.reason,
      required this.courseName,
      required this.courseId,
      required this.subCourseName,
      required this.subCourseId,
      required this.notes,
      required this.enrollDocId,
      required this.instructorId,
      required this.instructorName,
      required this.instructorEmail,
      required this.prefSlotId,
      required this.instructorPhone,
      required this.timestamp,
      required this.lastUpdated});
}
