part of 'event_enroll_details_cubit.dart';

@freezed
class EventEnrollDetailsState with _$EventEnrollDetailsState {
  const factory EventEnrollDetailsState({
    EventEnroll? eventEnroll,
    @Default(true) bool isLoading,
    String? error
}) = _Initial;
}
