import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentModel extends Student {
  StudentModel(
      {required super.name,
      required super.firstname,
      required super.lastname,
      required super.age,
      required super.dateOfBirth,
      required super.gender,
      required super.userId,
      required super.userEmail,
      required super.studentDocId,
      required super.parentName,
      required super.relationToStudent,
      required super.ageInWords,
      required super.timestamp,
      required super.lastUpdated,
      required super.inBin});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'firstname': firstname,
      'lastname': lastname,
      'age': age,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'userId': userId,
      'userEmail': userEmail,
      'studentDocId': studentDocId,
      'parentName': parentName,
      'relationToStudent': relationToStudent,
      'ageInWords': ageInWords,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
      'inBin': inBin,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      name: map['name'] ?? "",
      firstname: map['firstname'] ?? "",
      lastname: map['lastname'] ?? "",
      age: map['age'] ?? "",
      dateOfBirth: map['dateOfBirth'] ?? "",
      gender: map['gender'] ?? "",
      userId: map['userId'] ?? "",
      userEmail: map['userEmail'] ?? "",
      studentDocId: map['studentDocId'] ?? "",
      parentName: map['parentName'] ?? "",
      relationToStudent: map['relationToStudent'] ?? "",
      ageInWords: map['ageInWords'] ?? "",
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
      inBin: map['inBin'] as bool,
    );
  }

  StudentModel copyWith({
    String? name,
    String? firstname,
    String? lastname,
    String? age,
    String? dateOfBirth,
    String? gender,
    String? userId,
    String? userEmail,
    String? studentDocId,
    String? parentName,
    String? relationToStudent,
    String? ageInWords,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
    bool? inBin,
  }) {
    return StudentModel(
      name: name ?? this.name,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      age: age ?? this.age,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      userId: userId ?? this.userId,
      userEmail: userEmail ?? this.userEmail,
      studentDocId: studentDocId ?? this.studentDocId,
      parentName: parentName ?? this.parentName,
      relationToStudent: relationToStudent ?? this.relationToStudent,
      ageInWords: ageInWords ?? this.ageInWords,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      inBin: inBin ?? this.inBin,
    );
  }

  /*StudentModel toStudent() {
    return StudentModel(
        name: name,
        firstname: firstname,
        lastname: lastname,
        age: age,
        dateOfBirth: dateOfBirth,
        gender: gender,
        userId: userId,
        userEmail: userEmail,
        studentDocId: studentDocId,
        parentName: parentName,
        relationToStudent: relationToStudent,
        ageInWords: ageInWords,
        timestamp: timestamp,
        lastUpdated: lastUpdated,
        inBin: inBin);
  }*/
}
