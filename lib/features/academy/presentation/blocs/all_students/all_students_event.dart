part of 'all_students_bloc.dart';

@freezed
class AllStudentsEvent with _$AllStudentsEvent {
  const factory AllStudentsEvent.startEvent({required String uuid}) = StartEvent;
  const factory AllStudentsEvent.deleteStudentEvent({required String studentId}) = DeleteStudentEvent;
  const factory AllStudentsEvent.newList({required List<Student> students}) = NewStudentList;
}
