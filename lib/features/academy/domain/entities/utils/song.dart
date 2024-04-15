import 'package:cloud_firestore/cloud_firestore.dart';

class Song {
  final String songId;
  final String songName;
  final String songGenre;
  final String songArtist;
  final String songAlbum;
  final String songUrl;
  final String songImageUrl;
  final String songShortDesc;
  final String songLongDesc;
  final String userId;
  final String username;
  final String userEmail;
  final String userPhone;
  final String studentId;
  final String studentName;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  Song(
      {required this.songId,
      required this.songName,
      required this.songGenre,
      required this.songArtist,
      required this.songAlbum,
      required this.songUrl,
      required this.songImageUrl,
      required this.songShortDesc,
      required this.songLongDesc,
      required this.userId,
      required this.username,
      required this.userEmail,
      required this.userPhone,
      required this.studentId,
      required this.studentName,
      required this.timestamp,
      required this.lastUpdated});


}
