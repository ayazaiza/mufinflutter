import 'package:academy/features/academy/domain/entities/courses/lesson_course.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LessonCourseModel extends LessonCourse {
  LessonCourseModel(
      {required super.title,
      required super.lessonId,
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
      required super.lastUpdated,
      required super.gradeId,
      required super.gradeName});

  LessonCourseModel copyWith({
    String? title,
    String? lessonId,
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
    String? gradeId,
    String? gradeName,
  }) {
    return LessonCourseModel(
      title: title ?? this.title,
      lessonId: lessonId ?? this.lessonId,
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
      gradeId: gradeId ?? this.gradeId,
      gradeName: gradeName ?? this.gradeName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'lessonId': lessonId,
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
      'gradeId': gradeId,
      'gradeName': gradeName,
    };
  }

  factory LessonCourseModel.fromMap(Map<String, dynamic> map) {
    return LessonCourseModel(
      title: map['title'] as String,
      lessonId: map['lessonId'] as String,
      about: map['about'] as String,
      imageUrl: map['imageUrl'] as String,
      courseName: map['courseName'] as String,
      courseId: map['courseId'] as String,
      subCourseName: map['subCourseName'] as String,
      subCourseId: map['subCourseId'] as String,
      certificationId: map['certificationId'] as String,
      certificationName: map['certificationName'] as String,
      index: map['index'] as int,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
      gradeId: map['gradeId'] as String,
      gradeName: map['gradeName'] as String,
    );
  }
}
