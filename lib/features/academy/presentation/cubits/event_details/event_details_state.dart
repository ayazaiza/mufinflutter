part of 'event_details_cubit.dart';

@freezed
class EventDetailsState with _$EventDetailsState {
  const factory EventDetailsState({
    @Default(null) MufinEvents? mufinEvents,
    @Default(true) bool isLoading
  }) = _Initial;
}
