part of 'landing_cubit.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState({
    @Default(true) bool isFetching,
    String? errorMsg,
    @Default(<CarouselItem>[]) List<CarouselItem> items,
    @Default(<MufinEvents>[]) List<MufinEvents> events,
  }) = _Initial;
}
