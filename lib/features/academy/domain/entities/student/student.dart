import 'package:cloud_firestore/cloud_firestore.dart';

class Student {
  final String name;
  final String firstname;
  final String lastname;
  final String age;
  final String dateOfBirth;
  final String gender;
  final String userId;
  final String userEmail;
  final String studentDocId;
  final String parentName;
  final String relationToStudent;
  final String ageInWords;
  final Timestamp timestamp;
  final Timestamp lastUpdated;
  final bool inBin;

  Student(
      {required this.name,
      required this.firstname,
      required this.lastname,
      required this.age,
      required this.dateOfBirth,
      required this.gender,
      required this.userId,
      required this.userEmail,
      required this.studentDocId,
      required this.parentName,
      required this.relationToStudent,
      required this.ageInWords,
      required this.timestamp,
      required this.lastUpdated,
      required this.inBin});


}
