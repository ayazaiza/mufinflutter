part of 'student_cls_cubit.dart';

@freezed
class StudentClsState with _$StudentClsState {
  const factory StudentClsState({
    @Default(true) bool isLoading,
    String? errorMsg,
    @Default([]) List<StudentTimes> times,
  }) = _Initial;
}
