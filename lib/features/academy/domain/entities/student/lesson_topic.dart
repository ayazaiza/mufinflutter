import 'package:cloud_firestore/cloud_firestore.dart';

class LessonTopic {
  final String gradeId;
  final String gradeName;
  final String lessonId;
  final String lessonName;
  final String lessonTopicId;
  final String gradeTopicId;
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
  final String title;
  final String studentTimeDocId;
  final String certificationId;
  final String certificationName;
  final bool status;
  final String startedDate;
  final String completedDate;
  final String completedTime;
  final String feedback;
  final String description;
  final int index;
  final String enrollId;
  final String prefSlotId;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  LessonTopic(
      {required this.gradeId,
      required this.gradeName,
      required this.lessonId,
      required this.lessonName,
      required this.lessonTopicId,
      required this.gradeTopicId,
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
      required this.title,
      required this.studentTimeDocId,
      required this.certificationId,
      required this.certificationName,
      required this.status,
      required this.startedDate,
      required this.completedDate,
      required this.completedTime,
      required this.feedback,
      required this.description,
      required this.index,
      required this.enrollId,
      required this.prefSlotId,
      required this.timestamp,
      required this.lastUpdated});

}
