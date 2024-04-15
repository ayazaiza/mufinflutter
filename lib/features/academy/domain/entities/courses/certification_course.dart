import 'package:cloud_firestore/cloud_firestore.dart';

class CertificationCourse {
  final String certificationId;
  final String title;
  final String about;
  final String imageUrl;
  final String courseId;
  final String courseName;
  final String subCourseId;
  final String subCourseName;
  final int index;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  CertificationCourse(
      {required this.certificationId,
      required this.title,
      required this.about,
      required this.imageUrl,
      required this.courseId,
      required this.courseName,
      required this.subCourseId,
      required this.subCourseName,
      required this.index,
      required this.timestamp,
      required this.lastUpdated});


}
