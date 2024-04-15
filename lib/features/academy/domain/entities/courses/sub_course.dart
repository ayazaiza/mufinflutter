import 'package:cloud_firestore/cloud_firestore.dart';

class SubCourse {
  final int activeCount;
  final int enrollCount;
  final int availableCount;
  final String about;
  final String imageUrl;
  final String name;
  final String subCourseId;
  final int index;
  final String courseName;
  final String courseId;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  SubCourse(
      {required this.activeCount,
      required this.enrollCount,
      required this.availableCount,
      required this.about,
      required this.imageUrl,
      required this.name,
      required this.subCourseId,
      required this.index,
      required this.courseName,
      required this.courseId,
      required this.timestamp,
      required this.lastUpdated});


}
