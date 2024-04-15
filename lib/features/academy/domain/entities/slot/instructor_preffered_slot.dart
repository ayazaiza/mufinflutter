import 'package:cloud_firestore/cloud_firestore.dart';

import 'day.dart';

class InstructorPrefSlot {
  final String prefSlotId;
  final String name;
  final String email;
  final String phone;
  final String userId;
  final String mainCourse;
  final String courseId;
  final String subCourse;
  final String subCourseId;
  final Timestamp timestamp;
  final Timestamp lastUpdated;
  final List<Day> days;

  InstructorPrefSlot(
      {required this.prefSlotId,
      required this.name,
      required this.email,
      required this.phone,
      required this.userId,
      required this.mainCourse,
      required this.courseId,
      required this.subCourse,
      required this.subCourseId,
      required this.timestamp,
      required this.lastUpdated,
      required this.days});


}
