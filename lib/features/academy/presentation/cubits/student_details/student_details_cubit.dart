import 'dart:async';

import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:academy/features/academy/domain/usescases/student/get_student_stream.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/resource.dart';

part 'student_details_state.dart';

part 'student_details_cubit.freezed.dart';

class StudentDetailsCubit extends Cubit<StudentDetailsState> {
  final GetStudentStream _getStudentStream;

  // final String _uuid;
  final String _studentId;
  StreamSubscription<Resource<Student>>? _student;

  StudentDetailsCubit(
      {required String uuid,
      required String studentId,
      required GetStudentStream getStudentStream})
      : _getStudentStream = getStudentStream,
        _studentId = studentId,
        super(StudentDetailsState(uuid: uuid, studentId: studentId)) {
    fetchData();
  }

  void fetchData() {
    _student?.cancel();
    _student = _getStudentStream(_studentId).listen((event) async {
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
          student: event.data ?? state.student,
          isLoading: false,
          error: event.error));
    });
  }

  @override
  Future<void> close() {
    _student?.cancel();
    return super.close();
  }
}
