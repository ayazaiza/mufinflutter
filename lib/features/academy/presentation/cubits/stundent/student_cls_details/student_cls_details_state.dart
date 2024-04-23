part of 'student_cls_details_cubit.dart';

@freezed
class StudentClsDetailsState with _$StudentClsDetailsState {
  const factory StudentClsDetailsState({
    @Default(true) bool isLoading,
    String? error,
    StudentTimes? studentTimes,
  }) = _Initial;
}
