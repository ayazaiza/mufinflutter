import 'package:cloud_firestore/cloud_firestore.dart';

class MufinUser {
  final String name;
  final String userId;
  final String firstname;
  final String lastname;
  final String description;
  final String documentId;
  final String phone;
  final String email;
  final String alternateEmail;
  final String studentRelationShip;
  final String emailType;
  final String phoneType;
  final String address;
  final String country;
  final String city;
  final String state;
  final String extra;
  final String howDidYouFindUs;
  final Timestamp timestamp;
  final Timestamp lastUpdated;
  final List<String> preferredDays;
  final List<String> preferredTimes;
  final bool receiveEmails;
  final bool receiveSMS;
  final bool admin;
  final bool inspector;

  MufinUser({
    required this.name,
    required this.userId,
    required this.firstname,
    required this.lastname,
    required this.description,
    required this.documentId,
    required this.phone,
    required this.email,
    required this.alternateEmail,
    required this.studentRelationShip,
    required this.emailType,
    required this.phoneType,
    required this.address,
    required this.country,
    required this.city,
    required this.state,
    required this.extra,
    required this.howDidYouFindUs,
    required this.timestamp,
    required this.lastUpdated,
    required this.preferredDays,
    required this.preferredTimes,
    required this.receiveEmails,
    required this.receiveSMS,
    required this.admin,
    required this.inspector,
  });


}
