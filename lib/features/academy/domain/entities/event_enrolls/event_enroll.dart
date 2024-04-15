import 'package:cloud_firestore/cloud_firestore.dart';

class EventEnroll{
  final String eventName;
  final String eventTypeId;
  final String id;
  final String parentId;
  final String parentName;
  final String parentEmail;
  final String parentPhone;
  final String studentName;
  final String studentId;
  final String studentAge;
  final String gender;
  final String studentDob;
  final String studentFirstName;
  final String studentLastName;
  final Timestamp timestamp;
  final Timestamp lastUpdated;
  final String status;

  EventEnroll({required this.eventName, required this.eventTypeId, required this.id, required this.parentId, required this.parentName, required this.parentEmail, required this.parentPhone, required this.studentName, required this.studentId, required this.studentAge, required this.gender, required this.studentDob, required this.studentFirstName, required this.studentLastName, required this.timestamp, required this.lastUpdated, required this.status});


}