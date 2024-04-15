import 'dart:developer';

import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/entities/user/mufin_user.dart';
import 'package:academy/features/academy/domain/usescases/student/update_student.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/models/gender_model.dart';
import '../../../../../core/utils/form_validation.dart';
import '../../../domain/usescases/student/add_student.dart';
import '../../../domain/usescases/student/get_student.dart';
import '../../../domain/usescases/user/user_exist.dart';

part 'add_student_event.dart';

part 'add_student_state.dart';

part 'add_student_bloc.freezed.dart';

class AddStudentBloc extends Bloc<AddStudentEvent, AddStudentState> {
  String? _studentId;
  final GetStudent _getStudent;
  final UserExists _getUser;
  final AddStudent _addStudent;
  final UpdateStudent _updateStudent;

  AddStudentBloc(
      {required GetStudent getStudent,
      required UserExists userExists,
      required AddStudent addStudent,
      required UpdateStudent updateStudent,
      String? studentId})
      : _studentId = studentId,
        _addStudent = addStudent,
        _getStudent = getStudent,
        _getUser = userExists,
        _updateStudent = updateStudent,
        super(AddStudentState(studentId: studentId)) {
    // if (studentId != null) {
    //   add(AddStudentEvent.loadStudent(studentId: studentId));
    // }

    on<FirstName>((event, emit) {
      emit(state.copyWith(firstName: event.name, firstNameError: null));
    });
    on<LastName>((event, emit) {
      emit(state.copyWith(lastName: event.name, lastNameError: null));
    });
    on<GenderEvent>((event, emit) {
      emit(state.copyWith(gender: event.gender, genderError: null));
    });
    on<DateOfBirth>((event, emit) {
      emit(state.copyWith(
          dateOfBirth: event.dateOfBirth,
          age: event.age,
          dateOfBirthError: null));
    });
    on<Relation>((event, emit) {
      emit(state.copyWith(relation: event.relation, relationError: null));
    });

    on<AssignStudent>((event, emit) {
      emit(state.copyWith(
          student: event.student,
          error: event.error,
          firstName: event.student?.firstname ?? state.firstName,
          lastName: event.student?.lastname ?? state.lastName,
          dateOfBirth: event.student?.dateOfBirth ?? state.dateOfBirth,
          age: event.student?.age ?? state.age,
          relation: event.student?.relationToStudent ?? state.relation,
          gender: event.student?.gender != null
              ? Gender.wrap(event.student!.gender)
              : null,
          screenLoading: false));
    });
    on<AssignUser>((event, emit) {
      Gender.wrap("");
      emit(state.copyWith(
          mufinUser: event.user, error: event.error, screenLoading: false));
    });
    on<Submit>(_submit);
    on<LoadUser>(_loadUser);
    on<LoadStudent>(_loadStudent);
  }

  void _loadStudent(LoadStudent event, Emitter emit) async {
    if (event.studentId == null) return;
    var resp = await _getStudent(event.studentId!);
    add(AddStudentEvent.assignStudent(student: resp.data, error: resp.error));
  }

  void _loadUser(LoadUser event, Emitter emit) async {
    var resp = await _getUser(event.uuid);
    add(AddStudentEvent.assignUser(user: resp.data, error: resp.error));
  }

  void _submit(Submit event, Emitter emit) async {
    var firstNameError =
        FormValidationRegex.emptyCheck(state.firstName, AppStrings.firstname);
    var lastNameError =
        FormValidationRegex.emptyCheck(state.lastName, AppStrings.lastname);
    var dateOfBirthError = FormValidationRegex.emptyCheck(
        state.dateOfBirth, AppStrings.dateOfBirth);
    var relationError =
        FormValidationRegex.emptyCheck(state.relation, AppStrings.relation);

    var genderError = state.gender == null ? "Gender required" : null;

    var hasError = [
      firstNameError,
      lastNameError,
      dateOfBirthError,
      relationError,
      genderError
    ].any((element) => element != null);
    emit(state.copyWith(
        firstNameError: firstNameError,
        lastNameError: lastNameError,
        dateOfBirthError: dateOfBirthError,
        relationError: relationError,
        genderError: genderError));
    if (hasError) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    Student student = Student(
        name: "${state.firstName.trim()} ${state.lastName.trim()}",
        firstname: state.firstName.trim(),
        lastname: state.lastName.trim(),
        age: state.age,
        dateOfBirth: state.dateOfBirth.trim(),
        gender: state.gender!.toName,
        userId: state.uuid ?? state.mufinUser!.userId,
        userEmail: state.mufinUser!.email,
        studentDocId: state.studentId ?? "",
        parentName: state.mufinUser!.name,
        relationToStudent: state.relation!.trim(),
        ageInWords: state.student?.ageInWords ?? "",
        timestamp: state.student?.timestamp ?? Timestamp.now(),
        lastUpdated: Timestamp.now(),
        inBin: state.student?.inBin ?? false);

    if (state.student == null) {
      var resp = await _addStudent(student);
      if (resp.data != null) {
        emit(state.copyWith(
            isLoading: false, successMsg: resp.data!, errorMsg: null));
      }
      emit(state.copyWith(isLoading: false, errorMsg: resp.error));
      return;
    }
    var resp = await _updateStudent(student);
    if (resp.data != null) {
      emit(state.copyWith(
          isLoading: false, successMsg: resp.data!, errorMsg: null));
    }
    emit(state.copyWith(isLoading: false, errorMsg: resp.error));
  }
}
