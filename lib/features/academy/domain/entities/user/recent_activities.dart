import 'package:cloud_firestore/cloud_firestore.dart';

class RecentActivities{
  final String userId;
  final String activity;
  final String recentActivityId;
  final Timestamp timestamp;

  RecentActivities({required this.userId, required this.activity, required this.recentActivityId, required this.timestamp});

}