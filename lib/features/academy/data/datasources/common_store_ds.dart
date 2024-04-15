import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract interface class CommonStoreDataSources<MainModel> {
  Future<void> inset(MainModel model);

  Future<void> update(MainModel model);

  Future<void> delete(String id);

  Future<QuerySnapshot<Object?>> getItems(String uuid);
  
  Future<DocumentSnapshot<Object?>> getItem(String id);

  Stream<QuerySnapshot<Object?>> getItemsStream(String uuid);

  Stream<DocumentSnapshot<Object?>> getItemStream(String id);
}

class CommonStoreDataSourcesImpl implements CommonStoreDataSources<Student> {
  final CollectionReference _commonCollRef;

  CommonStoreDataSourcesImpl({required CollectionReference commonCollRef})
      : _commonCollRef = commonCollRef;

  @override
  Future<DocumentSnapshot<Object?>> getItem(String id) =>
      _commonCollRef.doc(id).get();



  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Stream<DocumentSnapshot<Object?>> getItemStream(String id) {
    // TODO: implement getItemStream
    throw UnimplementedError();
  }

  @override
  Future<void> inset(Student model) {
    // TODO: implement inset
    throw UnimplementedError();
  }

  @override
  Future<void> update(Student model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<QuerySnapshot<Object?>> getItems(String uuid) {
    // TODO: implement getItems
    throw UnimplementedError();
  }

  @override
  Stream<QuerySnapshot<Object?>> getItemsStream(String uuid) {
    // TODO: implement getItemsStream
    throw UnimplementedError();
  }

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
