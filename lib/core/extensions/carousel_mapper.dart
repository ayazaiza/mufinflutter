import '../../features/academy/domain/entities/utils/carousel_item.dart';

extension CarouselItemExt on CarouselItem {
  Map<String, dynamic> get toHashMap => {
        "itemIndex": itemIndex,
        "title": title,
        "desc": desc,
        "id": id,
        "image": image,
        "isVisibleItem": isVisibleItem,
        "timestamp": timestamp
      };

  CarouselItem fromMap(Map<String, dynamic> map) => CarouselItem(
      itemIndex: itemIndex,
      title: title,
      desc: desc,
      id: id,
      image: image,
      isVisibleItem: isVisibleItem,
      timestamp: timestamp);
}
