import 'package:academy/features/academy/domain/entities/courses/grade_course.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GradeCourseModel extends GradeCourse {
  GradeCourseModel(
      {required super.title,
      required super.gradeId,
      required super.about,
      required super.imageUrl,
      required super.courseName,
      required super.courseId,
      required super.subCourseName,
      required super.subCourseId,
      required super.certificationId,
      required super.certificationName,
      required super.index,
      required super.timestamp,
      required super.lastUpdated});

  GradeCourseModel copyWith({
    String? title,
    String? gradeId,
    String? about,
    String? imageUrl,
    String? courseName,
    String? courseId,
    String? subCourseName,
    String? subCourseId,
    String? certificationId,
    String? certificationName,
    int? index,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
  }) {
    return GradeCourseModel(
      title: title ?? this.title,
      gradeId: gradeId ?? this.gradeId,
      about: about ?? this.about,
      imageUrl: imageUrl ?? this.imageUrl,
      courseName: courseName ?? this.courseName,
      courseId: courseId ?? this.courseId,
      subCourseName: subCourseName ?? this.subCourseName,
      subCourseId: subCourseId ?? this.subCourseId,
      certificationId: certificationId ?? this.certificationId,
      certificationName: certificationName ?? this.certificationName,
      index: index ?? this.index,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'gradeId': gradeId,
      'about': about,
      'imageUrl': imageUrl,
      'courseName': courseName,
      'courseId': courseId,
      'subCourseName': subCourseName,
      'subCourseId': subCourseId,
      'certificationId': certificationId,
      'certificationName': certificationName,
      'index': index,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
    };
  }

  factory GradeCourseModel.fromMap(Map<String, dynamic> map) {
    return GradeCourseModel(
      title: map['title'] ?? "",
      gradeId: map['gradeId'] ?? "",
      about: map['about'] ?? "",
      imageUrl: map['imageUrl'] ?? "",
      courseName: map['courseName'] ?? "",
      courseId: map['courseId'] ?? "",
      subCourseName: map['subCourseName'] ?? "",
      subCourseId: map['subCourseId'] ?? "",
      certificationId: map['certificationId'] ?? "",
      certificationName: map['certificationName'] ?? "",
      index: map['index'] as int,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
    );
  }
}
