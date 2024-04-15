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
      eventName: map['eventName'] as String,
      eventTypeId: map['eventTypeId'] as String,
      id: map['id'] as String,
      parentId: map['parentId'] as String,
      parentName: map['parentName'] as String,
      parentEmail: map['parentEmail'] as String,
      parentPhone: map['parentPhone'] as String,
      studentName: map['studentName'] as String,
      studentId: map['studentId'] as String,
      studentAge: map['studentAge'] as String,
      gender: map['gender'] as String,
      studentDob: map['studentDob'] as String,
      studentFirstName: map['studentFirstName'] as String,
      studentLastName: map['studentLastName'] as String,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
      status: map['status'] as String,
    );
  }
}
