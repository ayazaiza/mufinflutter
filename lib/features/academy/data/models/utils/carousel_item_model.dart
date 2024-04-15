import 'package:academy/features/academy/domain/entities/utils/carousel_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CarouselItemModel extends CarouselItem {
  CarouselItemModel(
      {required super.itemIndex,
      required super.title,
      required super.desc,
      required super.id,
      required super.image,
      required super.isVisibleItem,
      required super.timestamp});

  CarouselItemModel copyWith(
          {int? itemIndex,
          String? title,
          String? desc,
          String? id,
          String? image,
          bool? isVisibleItem,
          Timestamp? timestamp}) =>
      CarouselItemModel(
          itemIndex: itemIndex ?? this.itemIndex,
          title: title ?? this.title,
          desc: desc ?? this.desc,
          id: id ?? this.id,
          image: image ?? this.image,
          isVisibleItem: isVisibleItem ?? this.isVisibleItem,
          timestamp: timestamp ?? this.timestamp);

  factory CarouselItemModel.fromMap(Map<String, dynamic> map) =>
      CarouselItemModel(
          itemIndex: map["itemIndex"],
          title: map["title"],
          desc: map["desc"],
          id: map["id"],
          image: map["image"],
          isVisibleItem: map["isVisibleItem"] ?? true,
          timestamp: map["timestamp"]);
}
