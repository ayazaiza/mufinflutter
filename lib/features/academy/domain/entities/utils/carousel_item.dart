import 'package:cloud_firestore/cloud_firestore.dart';

class CarouselItem {
  final int itemIndex;
  final String title;
  final String desc;
  final String id;
  final String image;
  final bool isVisibleItem;
  final Timestamp timestamp;

  CarouselItem(
      {required this.itemIndex,
      required this.title,
      required this.desc,
      required this.id,
      required this.image,
      required this.isVisibleItem,
      required this.timestamp});


}
