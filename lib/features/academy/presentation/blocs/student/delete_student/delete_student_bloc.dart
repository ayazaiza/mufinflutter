import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/usescases/student/delete_student.dart';

part 'delete_student_event.dart';

part 'delete_student_state.dart';

part 'delete_student_bloc.freezed.dart';

class DeleteStudentBloc extends Bloc<DeleteStudentEvent, DeleteStudentState> {
  final DeleteStudent _deleteStudent;

  DeleteStudentBloc({required DeleteStudent deleteStudent})
      : _deleteStudent = deleteStudent,
        super(const DeleteStudentState.initial()) {
    on<DeleteEvent>((event, emit) async {
      var resp = await _deleteStudent.call(event.student);
      if (resp.data == null) {
        add(DeleteStudentEvent.notDeleted(
            msg: resp.error ?? AppStrings.somethingWentWrong));
        return;
      }
      add(DeleteStudentEvent.deleted(msg: resp.data!));
    });
    on<Started>((event, emit) async {
      emit(const DeleteStudentState.initial());
    });
    on<DeletedEvent>((event, emit) async {
      emit(DeleteStudentState.studentDeleted(msg: event.msg));
    });
    on<NotDeletedEvent>((event, emit) async {
      emit(DeleteStudentState.notDeleted(msg: event.msg));
    });
  }
}
