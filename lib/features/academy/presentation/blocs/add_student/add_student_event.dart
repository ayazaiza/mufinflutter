part of 'add_student_bloc.dart';

@freezed
class AddStudentEvent with _$AddStudentEvent {
  const factory AddStudentEvent.loadUser({required String uuid}) = LoadUser;
  const factory AddStudentEvent.loadStudent({required String? studentId}) = LoadStudent;
  const factory AddStudentEvent.assignStudent({Student? student, String? error}) = AssignStudent;
  const factory AddStudentEvent.assignUser({MufinUser? user, String? error}) = AssignUser;
  const factory AddStudentEvent.firstName({required String name}) = FirstName;
  const factory AddStudentEvent.lastName({required String name}) = LastName;
  const factory AddStudentEvent.relation({required String relation}) = Relation;
  const factory AddStudentEvent.dateOfBirth({required String dateOfBirth, required String age}) = DateOfBirth;
  const factory AddStudentEvent.genderEvent({required Gender gender}) = GenderEvent;
  const factory AddStudentEvent.initScreen({required String uuid, String? studentId}) = InitScreen;
  const factory AddStudentEvent.submit() = Submit;
  const factory AddStudentEvent.reset() = Reset;
}
