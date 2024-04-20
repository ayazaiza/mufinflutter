part of 'event_details_cubit.dart';

@freezed
class EventDetailsState with _$EventDetailsState {
  const factory EventDetailsState({
    MufinEvents? mufinEvents,
    @Default(true) bool isLoading,
    String? error
  }) = _Initial;
}
