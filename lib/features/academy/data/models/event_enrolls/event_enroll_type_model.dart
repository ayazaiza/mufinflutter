import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/event_enrolls/event_enroll_type.dart';

class EventEnrollTypeModel extends EventEnrollType {
  EventEnrollTypeModel(
      {required super.name,
      required super.id,
      required super.itemVisible,
      required super.timestamp,
      required super.lastUpdated,
      required super.totalEnrolls,
      required super.description,
      required super.availableCount});

  EventEnrollTypeModel copyWith({
      String? name,
      String? id,
      bool? itemVisible,
      Timestamp? timestamp,
      Timestamp? lastUpdated,
      int? totalEnrolls,
      String? description,
      int? availableCount,
  }) {
      return EventEnrollTypeModel(
          name: name ?? this.name,
          id: id ?? this.id,
          itemVisible: itemVisible ?? this.itemVisible,
          timestamp: timestamp ?? this.timestamp,
          lastUpdated: lastUpdated ?? this.lastUpdated,
          totalEnrolls: totalEnrolls ?? this.totalEnrolls,
          description: description ?? this.description,
          availableCount: availableCount ?? this.availableCount,
      );
  }

  Map<String, dynamic> toMap() {
      return {
          'name': name,
          'id': id,
          'itemVisible': itemVisible,
          'timestamp': timestamp,
          'lastUpdated': lastUpdated,
          'totalEnrolls': totalEnrolls,
          'description': description,
          'availableCount': availableCount,
      };
  }

  factory EventEnrollTypeModel.fromMap(Map<String, dynamic> map) {
      return EventEnrollTypeModel(
          name: map['name'] as String,
          id: map['id'] as String,
          itemVisible: map['itemVisible'] as bool,
          timestamp: map['timestamp'] as Timestamp,
          lastUpdated: map['lastUpdated'] as Timestamp,
          totalEnrolls: map['totalEnrolls'] as int,
          description: map['description'] as String,
          availableCount: map['availableCount'] as int,
      );
  }
}
