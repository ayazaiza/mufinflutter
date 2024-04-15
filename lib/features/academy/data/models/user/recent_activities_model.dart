import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/user/recent_activities.dart';

class RecentActivitiesModel extends RecentActivities {
  RecentActivitiesModel(
      {required String userId,
      required String activity,
      required String recentActivityId,
      required Timestamp timestamp})
      : super(
            userId: userId,
            activity: activity,
            recentActivityId: recentActivityId,
            timestamp: timestamp);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "userId": userId,
      "activity": activity,
      "recentActivityId": recentActivityId,
      "timestamp": timestamp
    };
  }

  factory RecentActivitiesModel.fromJson(Map<String, dynamic> map) {
    return RecentActivitiesModel(
        userId: map['userId'],
        activity: map['activity'],
        recentActivityId: map['recentActivityId'],
        timestamp: map['timestamp']);
  }

  RecentActivitiesModel copyWith(
      {String? userId,
      String? activity,
      String? recentActivityId,
      Timestamp? timestamp}) {
    return RecentActivitiesModel(
        userId: userId ?? this.userId,
        activity: activity ?? this.activity,
        recentActivityId: recentActivityId ?? this.recentActivityId,
        timestamp: timestamp ?? this.timestamp);
  }
}
