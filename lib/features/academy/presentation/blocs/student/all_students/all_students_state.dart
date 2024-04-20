part of 'all_students_bloc.dart';

@freezed
class AllStudentsState with _$AllStudentsState {
  const factory AllStudentsState(
      {String? uuid,
      @Default([]) List<Student> students,
      @Default(true) bool isLoading}) = _Initial;
}
