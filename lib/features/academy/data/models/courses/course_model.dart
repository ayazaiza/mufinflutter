import 'package:academy/features/academy/domain/entities/courses/course.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CourseModel extends Course {
  CourseModel(
      {required super.name,
      required super.about,
      required super.imageUrl,
      required super.courseId,
      required super.index,
      required super.timestamp,
      required super.lastUpdated});

  CourseModel copyWith({
    String? name,
    String? about,
    String? imageUrl,
    String? courseId,
    int? index,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
  }) {
    return CourseModel(
      name: name ?? this.name,
      about: about ?? this.about,
      imageUrl: imageUrl ?? this.imageUrl,
      courseId: courseId ?? this.courseId,
      index: index ?? this.index,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'about': about,
      'imageUrl': imageUrl,
      'courseId': courseId,
      'index': index,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      name: map['name'] as String,
      about: map['about'] as String,
      imageUrl: map['imageUrl'] as String,
      courseId: map['courseId'] as String,
      index: map['index'] as int,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
    );
  }
}
