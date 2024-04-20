part of 'delete_student_bloc.dart';

@freezed
class DeleteStudentState with _$DeleteStudentState {
  const factory DeleteStudentState.initial() = Initial;
  const factory DeleteStudentState.studentDeleted({required String msg}) = StudentDeletedState;
  const factory DeleteStudentState.notDeleted({required String msg}) = NotDeletedState;
}
