import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/features/academy/data/models/utils/carousel_item_model.dart';

import 'package:academy/features/academy/domain/entities/utils/carousel_item.dart';
import 'package:academy/features/academy/data/datasources/common_firestore_ds.dart';

import '../../../../core/utils/resource.dart';
import '../../domain/repository/carousel_items_repo.dart';



class CarouselItemRepoImpl implements CarouselItemRepo {
  final CommonFireStoreDataSources _commonFireStoreDataSources;

  CarouselItemRepoImpl({required CommonFireStoreDataSources commonFireStoreDataSources})
      : _commonFireStoreDataSources = commonFireStoreDataSources;



  @override
  Future<Resource<CarouselItem?>> getCarouselItem(String id) async {
    var data = await _commonFireStoreDataSources.getItem(id);
    return DataSuccess(data.toCarouselItem);
  }

  @override
  Future<Resource<List<CarouselItem>>> getCarouselItems() async {
    var data = await _commonFireStoreDataSources.getItems();
    return DataSuccess(
        data.toMapList.map((e) => CarouselItemModel.fromMap(e)).toList());
  }

  @override
  Stream<Resource<List<CarouselItem>>> getCarouselItemsStream() {
    var data = _commonFireStoreDataSources.getItemsStream();
    return data.map((event) => DataSuccess(
        event.toMapList.map((e) => CarouselItemModel.fromMap(e)).toList()));
  }

 /*
   @override
  Future<Resource<String>> deleteCarouselItem(String id) async {
    try {
      await _carouselItemDS.deleteCarouselItem(id);
      return const DataSuccess(AppStrings.success);
    } on Exception catch (_, e) {
      return DataError(e.toString());
    }
  }


  @override
  Future<Resource<String>> insertCarousel(CarouselItem carouselItem) async {
    try {
      await _carouselItemDS.insertCarousel(carouselItem);
      return const DataSuccess(AppStrings.success);
    } on Exception catch (_, e) {
      return DataError(e.toString());
    }
  }

  @override
  Future<Resource<String>> updateCarouselItem(CarouselItem carouselItem) async {
    try {
      await _carouselItemDS.updateCarouselItem(carouselItem);
      return const DataSuccess(AppStrings.success);
    } on Exception catch (_, e) {
      return DataError(e.toString());
    }
  }*/
}
