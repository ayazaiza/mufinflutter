import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentTimesModel extends StudentTimes {
  StudentTimesModel(
      {required super.dayName,
      required super.parentTimeId,
      required super.timeId,
      required super.time,
      required super.active,
      required super.studentName,
      required super.parentName,
      required super.parentEmail,
      required super.userId,
      required super.studentId,
      required super.courseId,
      required super.courseName,
      required super.subCourse,
      required super.subCourseId,
      required super.instructorName,
      required super.instructorId,
      required super.instructorEmail,
      required super.status,
      required super.note,
      required super.studentTimeDocId,
      required super.enrollId,
      required super.prefSlotId,
      required super.timestamp,
      required super.lastUpdated});

  StudentTimesModel copyWith({
      String? dayName,
      String? parentTimeId,
      String? timeId,
      String? time,
      bool? active,
      String? studentName,
      String? parentName,
      String? parentEmail,
      String? userId,
      String? studentId,
      String? courseId,
      String? courseName,
      String? subCourse,
      String? subCourseId,
      String? instructorName,
      String? instructorId,
      String? instructorEmail,
      String? status,
      String? note,
      String? studentTimeDocId,
      String? enrollId,
      String? prefSlotId,
      Timestamp? timestamp,
      Timestamp? lastUpdated,
  }) {
      return StudentTimesModel(
          dayName: dayName ?? this.dayName,
          parentTimeId: parentTimeId ?? this.parentTimeId,
          timeId: timeId ?? this.timeId,
          time: time ?? this.time,
          active: active ?? this.active,
          studentName: studentName ?? this.studentName,
          parentName: parentName ?? this.parentName,
          parentEmail: parentEmail ?? this.parentEmail,
          userId: userId ?? this.userId,
          studentId: studentId ?? this.studentId,
          courseId: courseId ?? this.courseId,
          courseName: courseName ?? this.courseName,
          subCourse: subCourse ?? this.subCourse,
          subCourseId: subCourseId ?? this.subCourseId,
          instructorName: instructorName ?? this.instructorName,
          instructorId: instructorId ?? this.instructorId,
          instructorEmail: instructorEmail ?? this.instructorEmail,
          status: status ?? this.status,
          note: note ?? this.note,
          studentTimeDocId: studentTimeDocId ?? this.studentTimeDocId,
          enrollId: enrollId ?? this.enrollId,
          prefSlotId: prefSlotId ?? this.prefSlotId,
          timestamp: timestamp ?? this.timestamp,
          lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  }

  Map<String, dynamic> toMap() {
      return {
          'dayName': dayName,
          'parentTimeId': parentTimeId,
          'timeId': timeId,
          'time': time,
          'active': active,
          'studentName': studentName,
          'parentName': parentName,
          'parentEmail': parentEmail,
          'userId': userId,
          'studentId': studentId,
          'courseId': courseId,
          'courseName': courseName,
          'subCourse': subCourse,
          'subCourseId': subCourseId,
          'instructorName': instructorName,
          'instructorId': instructorId,
          'instructorEmail': instructorEmail,
          'status': status,
          'note': note,
          'studentTimeDocId': studentTimeDocId,
          'enrollId': enrollId,
          'prefSlotId': prefSlotId,
          'timestamp': timestamp,
          'lastUpdated': lastUpdated,
      };
  }

  factory StudentTimesModel.fromMap(Map<String, dynamic> map) {
      return StudentTimesModel(
          dayName: map['dayName'] ?? "",
          parentTimeId: map['parentTimeId'] ?? "",
          timeId: map['timeId'] ?? "",
          time: map['time'] ?? "",
          active: map['active'] ?? "",
          studentName: map['studentName'] ?? "",
          parentName: map['parentName'] ?? "",
          parentEmail: map['parentEmail'] ?? "",
          userId: map['userId'] ?? "",
          studentId: map['studentId'] ?? "",
          courseId: map['courseId'] ?? "",
          courseName: map['courseName'] ?? "",
          subCourse: map['subCourse'] ?? "",
          subCourseId: map['subCourseId'] ?? "",
          instructorName: map['instructorName'] ?? "",
          instructorId: map['instructorId'] ?? "",
          instructorEmail: map['instructorEmail'] ?? "",
          status: map['status'] ?? "",
          note: map['note'] ?? "",
          studentTimeDocId: map['studentTimeDocId'] ?? "",
          enrollId: map['enrollId'] ?? "",
          prefSlotId: map['prefSlotId'] ?? "",
          timestamp: map['timestamp'] as Timestamp,
          lastUpdated: map['lastUpdated'] as Timestamp,
      );
  }
}
