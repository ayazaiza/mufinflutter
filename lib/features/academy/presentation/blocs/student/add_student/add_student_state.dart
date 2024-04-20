part of 'add_student_bloc.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState(
      {String? uuid,
      String? studentId,
      String? error,
      String? successMsg,
      String? errorMsg,
      @Default("") String email,
      @Default("") String firstName,
      String? firstNameError,
      @Default("") String lastName,
      String? lastNameError,
      @Default("") String dateOfBirth,
      String? dateOfBirthError,
      @Default("") String age,
      Gender? gender,
      String? genderError,
      Student? student,
      @Default(false) bool isLoading,
      @Default(true) bool screenLoading,
      @Default([
        "Son",
        "Daughter",
        "Nephew",
        "Mother",
        "Father",
        "Guardian",
        "Husband",
        "Wife",
        "Brother",
        "Sister",
        "Friend",
        "Relative",
        "Self",
        "Others"
      ])
      List<String> relationsList,
      String? relation,
      String? relationError,
      MufinUser? mufinUser}) = _Initial;
}
