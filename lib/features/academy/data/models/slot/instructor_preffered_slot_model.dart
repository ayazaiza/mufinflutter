import 'package:academy/features/academy/data/models/slot/day_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/slot/instructor_preffered_slot.dart';

class InstructorPrefSlotModel extends InstructorPrefSlot {
  InstructorPrefSlotModel(
      {required super.prefSlotId,
      required super.name,
      required super.email,
      required super.phone,
      required super.userId,
      required super.mainCourse,
      required super.courseId,
      required super.subCourse,
      required super.subCourseId,
      required super.timestamp,
      required super.lastUpdated,
      required super.days});

  InstructorPrefSlotModel copyWith({
    String? prefSlotId,
    String? name,
    String? email,
    String? phone,
    String? userId,
    String? mainCourse,
    String? courseId,
    String? subCourse,
    String? subCourseId,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
    List<DayModel>? days,
  }) {
    return InstructorPrefSlotModel(
      prefSlotId: prefSlotId ?? this.prefSlotId,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      userId: userId ?? this.userId,
      mainCourse: mainCourse ?? this.mainCourse,
      courseId: courseId ?? this.courseId,
      subCourse: subCourse ?? this.subCourse,
      subCourseId: subCourseId ?? this.subCourseId,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      days: days ?? this.days,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'prefSlotId': prefSlotId,
      'name': name,
      'email': email,
      'phone': phone,
      'userId': userId,
      'mainCourse': mainCourse,
      'courseId': courseId,
      'subCourse': subCourse,
      'subCourseId': subCourseId,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
      'days': days.map((e) => (e as DayModel).toMap()),
    };
  }

  factory InstructorPrefSlotModel.fromMap(Map<String, dynamic> map) {
    return InstructorPrefSlotModel(
      prefSlotId: map['prefSlotId'] ?? "",
      name: map['name'] ?? "",
      email: map['email'] ?? "",
      phone: map['phone'] ?? "",
      userId: map['userId'] ?? "",
      mainCourse: map['mainCourse'] ?? "",
      courseId: map['courseId'] ?? "",
      subCourse: map['subCourse'] ?? "",
      subCourseId: map['subCourseId'] ?? "",
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
      days: map['days'] ?? [],
    );
  }
}
