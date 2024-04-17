import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/student/grade_topic.dart';

class GradeTopicModel extends GradeTopic {
  GradeTopicModel(
      {required super.gradeTopicId,
      required super.topicId,
      required super.studentId,
      required super.userId,
      required super.instructorId,
      required super.courseId,
      required super.subCourseId,
      required super.courseName,
      required super.subCourseName,
      required super.instructorName,
      required super.certificationId,
      required super.certificationName,
      required super.rating,
      required super.title,
      required super.studentTimeDocId,
      required super.gradeId,
      required super.gradeName,
      required super.status,
      required super.startedDate,
      required super.startedTime,
      required super.completedDate,
      required super.completedTime,
      required super.feedback,
      required super.description,
      required super.index,
      required super.enrollId,
      required super.prefSlotId,
      required super.timestamp,
      required super.lastUpdated});

  GradeTopicModel copyWith({
      String? gradeTopicId,
      String? topicId,
      String? studentId,
      String? userId,
      String? instructorId,
      String? courseId,
      String? subCourseId,
      String? courseName,
      String? subCourseName,
      String? instructorName,
      String? certificationId,
      String? certificationName,
      String? rating,
      String? title,
      String? studentTimeDocId,
      String? gradeId,
      String? gradeName,
      bool? status,
      String? startedDate,
      String? startedTime,
      String? completedDate,
      String? completedTime,
      String? feedback,
      String? description,
      int? index,
      String? enrollId,
      String? prefSlotId,
      Timestamp? timestamp,
      Timestamp? lastUpdated,
  }) {
      return GradeTopicModel(
          gradeTopicId: gradeTopicId ?? this.gradeTopicId,
          topicId: topicId ?? this.topicId,
          studentId: studentId ?? this.studentId,
          userId: userId ?? this.userId,
          instructorId: instructorId ?? this.instructorId,
          courseId: courseId ?? this.courseId,
          subCourseId: subCourseId ?? this.subCourseId,
          courseName: courseName ?? this.courseName,
          subCourseName: subCourseName ?? this.subCourseName,
          instructorName: instructorName ?? this.instructorName,
          certificationId: certificationId ?? this.certificationId,
          certificationName: certificationName ?? this.certificationName,
          rating: rating ?? this.rating,
          title: title ?? this.title,
          studentTimeDocId: studentTimeDocId ?? this.studentTimeDocId,
          gradeId: gradeId ?? this.gradeId,
          gradeName: gradeName ?? this.gradeName,
          status: status ?? this.status,
          startedDate: startedDate ?? this.startedDate,
          startedTime: startedTime ?? this.startedTime,
          completedDate: completedDate ?? this.completedDate,
          completedTime: completedTime ?? this.completedTime,
          feedback: feedback ?? this.feedback,
          description: description ?? this.description,
          index: index ?? this.index,
          enrollId: enrollId ?? this.enrollId,
          prefSlotId: prefSlotId ?? this.prefSlotId,
          timestamp: timestamp ?? this.timestamp,
          lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  }

  Map<String, dynamic> toMap() {
      return {
          'gradeTopicId': gradeTopicId,
          'topicId': topicId,
          'studentId': studentId,
          'userId': userId,
          'instructorId': instructorId,
          'courseId': courseId,
          'subCourseId': subCourseId,
          'courseName': courseName,
          'subCourseName': subCourseName,
          'instructorName': instructorName,
          'certificationId': certificationId,
          'certificationName': certificationName,
          'rating': rating,
          'title': title,
          'studentTimeDocId': studentTimeDocId,
          'gradeId': gradeId,
          'gradeName': gradeName,
          'status': status,
          'startedDate': startedDate,
          'startedTime': startedTime,
          'completedDate': completedDate,
          'completedTime': completedTime,
          'feedback': feedback,
          'description': description,
          'index': index,
          'enrollId': enrollId,
          'prefSlotId': prefSlotId,
          'timestamp': timestamp,
          'lastUpdated': lastUpdated,
      };
  }

  factory GradeTopicModel.fromMap(Map<String, dynamic> map) {
      return GradeTopicModel(
          gradeTopicId: map['gradeTopicId'] ?? "",
          topicId: map['topicId'] ?? "",
          studentId: map['studentId'] ?? "",
          userId: map['userId'] ?? "",
          instructorId: map['instructorId'] ?? "",
          courseId: map['courseId'] ?? "",
          subCourseId: map['subCourseId'] ?? "",
          courseName: map['courseName'] ?? "",
          subCourseName: map['subCourseName'] ?? "",
          instructorName: map['instructorName'] ?? "",
          certificationId: map['certificationId'] ?? "",
          certificationName: map['certificationName'] ?? "",
          rating: map['rating'] ?? "",
          title: map['title'] ?? "",
          studentTimeDocId: map['studentTimeDocId'] ?? "",
          gradeId: map['gradeId'] ?? "",
          gradeName: map['gradeName'] ?? "",
          status: map['status'] as bool,
          startedDate: map['startedDate'] ?? "",
          startedTime: map['startedTime'] ?? "",
          completedDate: map['completedDate'] ?? "",
          completedTime: map['completedTime'] ?? "",
          feedback: map['feedback'] ?? "",
          description: map['description'] ?? "",
          index: map['index'] as int,
          enrollId: map['enrollId'] ?? "",
          prefSlotId: map['prefSlotId'] ?? "",
          timestamp: map['timestamp'] as Timestamp,
          lastUpdated: map['lastUpdated'] as Timestamp,
      );
  }
}
