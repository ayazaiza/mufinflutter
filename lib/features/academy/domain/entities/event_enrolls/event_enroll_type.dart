import 'package:cloud_firestore/cloud_firestore.dart';

class EventEnrollType {
  final String name;
  final String id;
  final bool itemVisible;
  final Timestamp timestamp;
  final Timestamp lastUpdated;
  final int totalEnrolls;
  final String description;
  final int availableCount;

  EventEnrollType({required this.name, required this.id, required this.itemVisible, required this.timestamp, required this.lastUpdated, required this.totalEnrolls, required this.description, required this.availableCount});


}
