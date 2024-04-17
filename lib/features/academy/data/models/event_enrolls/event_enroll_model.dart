import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/event_enrolls/event_enroll.dart';

class EventEnrollModel extends EventEnroll {
  EventEnrollModel(
      {required super.eventName,
      required super.eventTypeId,
      required super.id,
      required super.parentId,
      required super.parentName,
      required super.parentEmail,
      required super.parentPhone,
      required super.studentName,
      required super.studentId,
      required super.studentAge,
      required super.gender,
      required super.studentDob,
      required super.studentFirstName,
      required super.studentLastName,
      required super.timestamp,
      required super.lastUpdated,
      required super.status});

  EventEnrollModel copyWith({
    String? eventName,
    String? eventTypeId,
    String? id,
    String? parentId,
    String? parentName,
    String? parentEmail,
    String? parentPhone,
    String? studentName,
    String? studentId,
    String? studentAge,
    String? gender,
    String? studentDob,
    String? studentFirstName,
    String? studentLastName,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
    String? status,
  }) {
    return EventEnrollModel(
      eventName: eventName ?? this.eventName,
      eventTypeId: eventTypeId ?? this.eventTypeId,
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      parentName: parentName ?? this.parentName,
      parentEmail: parentEmail ?? this.parentEmail,
      parentPhone: parentPhone ?? this.parentPhone,
      studentName: studentName ?? this.studentName,
      studentId: studentId ?? this.studentId,
      studentAge: studentAge ?? this.studentAge,
      gender: gender ?? this.gender,
      studentDob: studentDob ?? this.studentDob,
      studentFirstName: studentFirstName ?? this.studentFirstName,
      studentLastName: studentLastName ?? this.studentLastName,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'eventName': eventName,
      'eventTypeId': eventTypeId,
      'id': id,
      'parentId': parentId,
      'parentName': parentName,
      'parentEmail': parentEmail,
      'parentPhone': parentPhone,
      'studentName': studentName,
      'studentId': studentId,
      'studentAge': studentAge,
      'gender': gender,
      'studentDob': studentDob,
      'studentFirstName': studentFirstName,
      'studentLastName': studentLastName,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
      'status': status,
    };
  }

  factory EventEnrollModel.fromMap(Map<String, dynamic> map) {
    return EventEnrollModel(
      eventName: map['eventName'] ?? "",
      eventTypeId: map['eventTypeId'] ?? "",
      id: map['id'] ?? "",
      parentId: map['parentId'] ?? "",
      parentName: map['parentName'] ?? "",
      parentEmail: map['parentEmail'] ?? "",
      parentPhone: map['parentPhone'] ?? "",
      studentName: map['studentName'] ?? "",
      studentId: map['studentId'] ?? "",
      studentAge: map['studentAge'] ?? "",
      gender: map['gender'] ?? "",
      studentDob: map['studentDob'] ?? "",
      studentFirstName: map['studentFirstName'] ?? "",
      studentLastName: map['studentLastName'] ?? "",
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
      status: map['status'] ?? "",
    );
  }
}
