import 'package:academy/features/academy/domain/entities/utils/notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AppNotificationModel extends AppNotification {
  AppNotificationModel(
      {required super.notificationId,
      required super.message,
      required super.toUserId,
      required super.toEmail,
      required super.toName,
      required super.seen,
      required super.timestamp,
      required super.lastUpdated,
      required super.seenAt});

  AppNotificationModel copyWith({
    String? notificationId,
    String? message,
    String? toUserId,
    String? toEmail,
    String? toName,
    bool? seen,
    Timestamp? timestamp,
    Timestamp? lastUpdated,
    Timestamp? seenAt,
  }) {
    return AppNotificationModel(
      notificationId: notificationId ?? this.notificationId,
      message: message ?? this.message,
      toUserId: toUserId ?? this.toUserId,
      toEmail: toEmail ?? this.toEmail,
      toName: toName ?? this.toName,
      seen: seen ?? this.seen,
      timestamp: timestamp ?? this.timestamp,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      seenAt: seenAt ?? this.seenAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'notificationId': notificationId,
      'message': message,
      'toUserId': toUserId,
      'toEmail': toEmail,
      'toName': toName,
      'seen': seen,
      'timestamp': timestamp,
      'lastUpdated': lastUpdated,
      'seenAt': seenAt,
    };
  }

  factory AppNotificationModel.fromMap(Map<String, dynamic> map) {
    return AppNotificationModel(
      notificationId: map['notificationId'] as String,
      message: map['message'] as String,
      toUserId: map['toUserId'] as String,
      toEmail: map['toEmail'] as String,
      toName: map['toName'] as String,
      seen: map['seen'] as bool,
      timestamp: map['timestamp'] as Timestamp,
      lastUpdated: map['lastUpdated'] as Timestamp,
      seenAt: map['seenAt'] as Timestamp,
    );
  }
}
