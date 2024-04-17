import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/notes/note.dart';

class NoteModel extends Note {
  NoteModel(
      {required super.description,
      required super.noteId,
      required super.noteType,
      required super.date,
      required super.timestamp,
      required super.lastUpdated});

  NoteModel copyWith({
    String? description,
    String? noteId,
    String? noteType,
    String? date,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
  }) {
    return NoteModel(
      description: description ?? this.description,
      noteId: noteId ?? this.noteId,
      noteType: noteType ?? this.noteType,
      date: date ?? this.date,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'noteId': noteId,
      'noteType': noteType,
      'date': date,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      description: map['description'] ?? "",
      noteId: map['noteId'] ?? "",
      noteType: map['noteType'] ?? "",
      date: map['date'] ?? "",
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
    );
  }
}
