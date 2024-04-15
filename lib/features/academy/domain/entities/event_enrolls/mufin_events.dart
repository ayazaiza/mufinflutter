import 'package:cloud_firestore/cloud_firestore.dart';

class MufinEvents {
  final String mufinEventId;
  final String imageUrl;
  final String description;
  final String btnText;
  final String title;
  final String eventDate;
  final int sortOrder;
  final String cKey;
  final Timestamp timestamp;
  final Timestamp lastUpdated;

  MufinEvents(
      {required this.mufinEventId,
      required this.imageUrl,
      required this.description,
      required this.btnText,
      required this.title,
      required this.eventDate,
      required this.sortOrder,
      required this.cKey,
      required this.timestamp,
      required this.lastUpdated});


}
