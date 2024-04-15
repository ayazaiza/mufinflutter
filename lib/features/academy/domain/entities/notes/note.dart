import 'package:cloud_firestore/cloud_firestore.dart';

class Note {
  final String description;
  final String noteId;
  final String noteType;
  final String date;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  Note(
      {required this.description,
      required this.noteId,
      required this.noteType,
      required this.date,
      required this.timestamp,
      required this.lastUpdated});


}
