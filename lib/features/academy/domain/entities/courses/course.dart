import 'package:cloud_firestore/cloud_firestore.dart';

class Course {
  final String name;
  final String about;
  final String imageUrl;
  final String courseId;
  final int index;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  Course(
      {required this.name,
      required this.about,
      required this.imageUrl,
      required this.courseId,
      required this.index,
      required this.timestamp,
      required this.lastUpdated});


}
