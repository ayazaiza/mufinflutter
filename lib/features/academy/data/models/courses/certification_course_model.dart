import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/courses/certification_course.dart';

class CertificationCourseModel extends CertificationCourse {
  CertificationCourseModel(
      {required super.certificationId,
      required super.title,
      required super.about,
      required super.imageUrl,
      required super.courseId,
      required super.courseName,
      required super.subCourseId,
      required super.subCourseName,
      required super.index,
      required super.timestamp,
      required super.lastUpdated});

  Map<String, dynamic> toMap() {
    return {
      'certificationId': certificationId,
      'title': title,
      'about': about,
      'imageUrl': imageUrl,
      'courseId': courseId,
      'courseName': courseName,
      'subCourseId': subCourseId,
      'subCourseName': subCourseName,
      'index': index,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
    };
  }

  factory CertificationCourseModel.fromMap(Map<String, dynamic> map) {
    return CertificationCourseModel(
      certificationId: map['certificationId'] as String,
      title: map['title'] as String,
      about: map['about'] as String,
      imageUrl: map['imageUrl'] as String,
      courseId: map['courseId'] as String,
      courseName: map['courseName'] as String,
      subCourseId: map['subCourseId'] as String,
      subCourseName: map['subCourseName'] as String,
      index: map['index'] as int,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
    );
  }

  CertificationCourseModel copyWith({
    String? certificationId,
    String? title,
    String? about,
    String? imageUrl,
    String? courseId,
    String? courseName,
    String? subCourseId,
    String? subCourseName,
    int? index,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
  }) {
    return CertificationCourseModel(
      certificationId: certificationId ?? this.certificationId,
      title: title ?? this.title,
      about: about ?? this.about,
      imageUrl: imageUrl ?? this.imageUrl,
      courseId: courseId ?? this.courseId,
      courseName: courseName ?? this.courseName,
      subCourseId: subCourseId ?? this.subCourseId,
      subCourseName: subCourseName ?? this.subCourseName,
      index: index ?? this.index,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
}
