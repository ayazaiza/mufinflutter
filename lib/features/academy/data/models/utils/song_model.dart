import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/utils/song.dart';

class SongModel extends Song {
  SongModel(
      {required super.songId,
      required super.songName,
      required super.songGenre,
      required super.songArtist,
      required super.songAlbum,
      required super.songUrl,
      required super.songImageUrl,
      required super.songShortDesc,
      required super.songLongDesc,
      required super.userId,
      required super.username,
      required super.userEmail,
      required super.userPhone,
      required super.studentId,
      required super.studentName,
      required super.timestamp,
      required super.lastUpdated});

  SongModel copyWith({
    String? songId,
    String? songName,
    String? songGenre,
    String? songArtist,
    String? songAlbum,
    String? songUrl,
    String? songImageUrl,
    String? songShortDesc,
    String? songLongDesc,
    String? userId,
    String? username,
    String? userEmail,
    String? userPhone,
    String? studentId,
    String? studentName,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
  }) {
    return SongModel(
      songId: songId ?? this.songId,
      songName: songName ?? this.songName,
      songGenre: songGenre ?? this.songGenre,
      songArtist: songArtist ?? this.songArtist,
      songAlbum: songAlbum ?? this.songAlbum,
      songUrl: songUrl ?? this.songUrl,
      songImageUrl: songImageUrl ?? this.songImageUrl,
      songShortDesc: songShortDesc ?? this.songShortDesc,
      songLongDesc: songLongDesc ?? this.songLongDesc,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      userEmail: userEmail ?? this.userEmail,
      userPhone: userPhone ?? this.userPhone,
      studentId: studentId ?? this.studentId,
      studentName: studentName ?? this.studentName,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'songId': songId,
      'songName': songName,
      'songGenre': songGenre,
      'songArtist': songArtist,
      'songAlbum': songAlbum,
      'songUrl': songUrl,
      'songImageUrl': songImageUrl,
      'songShortDesc': songShortDesc,
      'songLongDesc': songLongDesc,
      'userId': userId,
      'username': username,
      'userEmail': userEmail,
      'userPhone': userPhone,
      'studentId': studentId,
      'studentName': studentName,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
    };
  }

  factory SongModel.fromMap(Map<String, dynamic> map) {
    return SongModel(
      songId: map['songId'] as String,
      songName: map['songName'] as String,
      songGenre: map['songGenre'] as String,
      songArtist: map['songArtist'] as String,
      songAlbum: map['songAlbum'] as String,
      songUrl: map['songUrl'] as String,
      songImageUrl: map['songImageUrl'] as String,
      songShortDesc: map['songShortDesc'] as String,
      songLongDesc: map['songLongDesc'] as String,
      userId: map['userId'] as String,
      username: map['username'] as String,
      userEmail: map['userEmail'] as String,
      userPhone: map['userPhone'] as String,
      studentId: map['studentId'] as String,
      studentName: map['studentName'] as String,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
    );
  }
}
