import 'package:cloud_firestore/cloud_firestore.dart';

class CompletedTopic {
  final String enrollId;
  final String topicId;
  final String studentId;
  final String userId;
  final String instructorId;
  final String courseId;
  final String subCourseId;
  final String courseName;
  final String subCourseName;
  final String instructorName;
  final String rating;
  final String topicName;
  final String studentTimeDocId;
  final String certificationId;
  final String certificationName;
  final bool status;
  final String startedDate;
  final String startedTime;
  final String completedDate;
  final String completedTime;
  final String feedback;
  final String description;
  final int index;
  final String prefSlotId;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  CompletedTopic(
      {required this.enrollId,
      required this.topicId,
      required this.studentId,
      required this.userId,
      required this.instructorId,
      required this.courseId,
      required this.subCourseId,
      required this.courseName,
      required this.subCourseName,
      required this.instructorName,
      required this.rating,
      required this.topicName,
      required this.studentTimeDocId,
      required this.certificationId,
      required this.certificationName,
      required this.status,
      required this.startedDate,
      required this.startedTime,
      required this.completedDate,
      required this.completedTime,
      required this.feedback,
      required this.description,
      required this.index,
      required this.prefSlotId,
      required this.timestamp,
      required this.lastUpdated});


}
