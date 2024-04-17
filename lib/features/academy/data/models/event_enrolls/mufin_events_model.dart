import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/event_enrolls/mufin_events.dart';

class MufinEventsModel extends MufinEvents {
  MufinEventsModel(
      {required super.mufinEventId,
      required super.imageUrl,
      required super.description,
      required super.btnText,
      required super.title,
      required super.eventDate,
      required super.sortOrder,
      required super.cKey,
      required super.timestamp,
      required super.lastUpdated});

  MufinEventsModel copy(
          {String? mufinEventId,
          String? imageUrl,
          String? description,
          String? btnText,
          String? title,
          String? eventDate,
          int? sortOrder,
          String? cKey,
          Timestamp? timestamp,
          Timestamp? lastUpdated}) =>
      MufinEventsModel(
          mufinEventId: mufinEventId ?? this.mufinEventId,
          imageUrl: imageUrl ?? this.imageUrl,
          description: description ?? this.description,
          btnText: btnText ?? this.description,
          title: title ?? this.title,
          eventDate: eventDate ?? this.eventDate,
          sortOrder: sortOrder ?? this.sortOrder,
          cKey: cKey ?? this.cKey,
          timestamp: timestamp ?? this.timestamp,
          lastUpdated: lastUpdated ?? this.lastUpdated);

  factory MufinEventsModel.fromMap(Map<String, dynamic> map) =>
      MufinEventsModel(
          mufinEventId: map["mufinEventId"] ?? "",
          imageUrl: map["imageUrl"] ?? "",
          description: map["description"] ?? "",
          btnText: map["btnText"] ?? "",
          title: map["title"] ?? "",
          eventDate: map["eventDate"] ?? "",
          sortOrder: map["sortOrder"] as int,
          cKey: map["cKey"] ?? "",
          timestamp: map["timestamp"] as Timestamp,
          lastUpdated: map["lastUpdated"] as Timestamp);
}
