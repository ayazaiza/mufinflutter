import 'package:cloud_firestore/cloud_firestore.dart';

abstract interface class CommonFireStoreDataSources {
  Future<DocumentSnapshot<Object?>> getItem(String id);

  Future<QuerySnapshot<Object?>> getItems();

  Stream<QuerySnapshot<Object?>> getItemsStream();
}

class CommonFireStoreDataSourcesImpl implements CommonFireStoreDataSources {
  final CollectionReference _commonCollRef;

  CommonFireStoreDataSourcesImpl({required CollectionReference commonCollRef})
      : _commonCollRef = commonCollRef;

  @override
  Future<DocumentSnapshot<Object?>> getItem(String id) =>
      _commonCollRef.doc(id).get();

  @override
  Future<QuerySnapshot<Object?>> getItems() => _commonCollRef.get();

  @override
  Stream<QuerySnapshot<Object?>> getItemsStream() => _commonCollRef.snapshots();

 /* @override
  Future<void> insert(CarouselItem carouselItem) async {
    String docId = _carouselItemRef.doc().id;
    return await _carouselItemRef
        .doc(docId)
        .set(carouselItem.copyWith(id: docId));
  }

  @override
  Future<void> updateCarouselItem(CarouselItem carouselItem) =>
      _carouselItemRef.doc(carouselItem.id).update(carouselItem.toHashMap);

  @override
  Future<void> deleteCarouselItem(String id) =>
      _carouselItemRef.doc(id).delete();*/
}


