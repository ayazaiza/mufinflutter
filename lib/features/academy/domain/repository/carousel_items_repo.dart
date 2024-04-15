import '../../../../core/utils/resource.dart';
import '../entities/utils/carousel_item.dart';

abstract interface class CarouselItemRepo {
  // Future<Resource<String>> insertCarousel(CarouselItem carouselItem);

  // Future<Resource<String>> updateCarouselItem(CarouselItem carouselItem);

  // Future<Resource<String>> deleteCarouselItem(String id);

  Future<Resource<CarouselItem?>> getCarouselItem(String id);

  Future<Resource<List<CarouselItem>>> getCarouselItems();

  Stream<Resource<List<CarouselItem>>> getCarouselItemsStream();
}