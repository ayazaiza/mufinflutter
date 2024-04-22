part of 'all_enrolls_cubit.dart';

@freezed
class AllEnrollsState with _$AllEnrollsState {
  const factory AllEnrollsState({
    @Default(true) bool isLoading,
    String? errorMsg,
    @Default([]) List<EnrollCourse> enrolls,
  }) = _Initial;
}
