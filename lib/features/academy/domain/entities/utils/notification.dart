import 'package:cloud_firestore/cloud_firestore.dart';

class AppNotification {
  final String notificationId;
  final String message;
  final String toUserId;
  final String toEmail;
  final String toName;
  final bool seen;
  final Timestamp timestamp;
  final Timestamp lastUpdated;
  final Timestamp seenAt;

  AppNotification(
      {required this.notificationId,
      required this.message,
      required this.toUserId,
      required this.toEmail,
      required this.toName,
      required this.seen,
      required this.timestamp,
      required this.lastUpdated,
      required this.seenAt});

}
