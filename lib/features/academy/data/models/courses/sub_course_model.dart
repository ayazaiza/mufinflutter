import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/courses/sub_course.dart';

class SubCourseModel extends SubCourse {
  SubCourseModel(
      {required super.activeCount,
      required super.enrollCount,
      required super.availableCount,
      required super.about,
      required super.imageUrl,
      required super.name,
      required super.subCourseId,
      required super.index,
      required super.courseName,
      required super.courseId,
      required super.timestamp,
      required super.lastUpdated});

  SubCourseModel copyWith({
    int? activeCount,
    int? enrollCount,
    int? availableCount,
    String? about,
    String? imageUrl,
    String? name,
    String? subCourseId,
    int? index,
    String? courseName,
    String? courseId,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
  }) {
    return SubCourseModel(
      activeCount: activeCount ?? this.activeCount,
      enrollCount: enrollCount ?? this.enrollCount,
      availableCount: availableCount ?? this.availableCount,
      about: about ?? this.about,
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      subCourseId: subCourseId ?? this.subCourseId,
      index: index ?? this.index,
      courseName: courseName ?? this.courseName,
      courseId: courseId ?? this.courseId,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'activeCount': activeCount,
      'enrollCount': enrollCount,
      'availableCount': availableCount,
      'about': about,
      'imageUrl': imageUrl,
      'name': name,
      'subCourseId': subCourseId,
      'index': index,
      'courseName': courseName,
      'courseId': courseId,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
    };
  }

  factory SubCourseModel.fromMap(Map<String, dynamic> map) {
    return SubCourseModel(
      activeCount: map['activeCount'] as int,
      enrollCount: map['enrollCount'] as int,
      availableCount: map['availableCount'] as int,
      about: map['about'] as String,
      imageUrl: map['imageUrl'] as String,
      name: map['name'] as String,
      subCourseId: map['subCourseId'] as String,
      index: map['index'] as int,
      courseName: map['courseName'] as String,
      courseId: map['courseId'] as String,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
    );
  }
}
