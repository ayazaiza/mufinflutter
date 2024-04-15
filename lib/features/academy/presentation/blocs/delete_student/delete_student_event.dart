part of 'delete_student_bloc.dart';

@freezed
class DeleteStudentEvent with _$DeleteStudentEvent {
  const factory DeleteStudentEvent.started() = Started;
  const factory DeleteStudentEvent.deleteStudent({required Student student}) =
      DeleteEvent;
  const factory DeleteStudentEvent.notDeleted({required String msg}) =
  NotDeletedEvent;
  const factory DeleteStudentEvent.deleted({required String msg}) =
  DeletedEvent;
}
