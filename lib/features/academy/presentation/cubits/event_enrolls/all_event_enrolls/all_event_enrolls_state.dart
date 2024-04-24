part of 'all_event_enrolls_cubit.dart';

@freezed
class AllEventEnrollsState with _$AllEventEnrollsState {
  const factory AllEventEnrollsState({
    @Default(true) bool isLoading,
    String? errorMsg,
    @Default([]) List<EventEnroll> eventEnrolls,
  }) = _Initial;
}
