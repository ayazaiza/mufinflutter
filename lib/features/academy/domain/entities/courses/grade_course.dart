import 'package:cloud_firestore/cloud_firestore.dart';

class GradeCourse{
  final String title;
  final String gradeId;
  final String about;
  final String imageUrl;
  final String courseName;
  final String courseId;
  final String subCourseName;
  final String subCourseId;
  final String certificationId;
  final String certificationName;
  final int index;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  GradeCourse({required this.title, required this.gradeId, required this.about, required this.imageUrl, required this.courseName, required this.courseId, required this.subCourseName, required this.subCourseId, required this.certificationId, required this.certificationName, required this.index, required this.timestamp, required this.lastUpdated});


}