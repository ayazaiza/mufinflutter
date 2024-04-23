import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slots_parent_id.dart';

part 'student_cls_state.dart';

part 'student_cls_cubit.freezed.dart';

class StudentClsCubit extends Cubit<StudentClsState> {
  final String _userId;
  final GetStudentSlotsParentId _getStudentSlotsParentId;

  StudentClsCubit(
      {required String userId,
      required GetStudentSlotsParentId getStudentSlotsParentId})
      : _userId = userId,
        _getStudentSlotsParentId = getStudentSlotsParentId,
        super(const StudentClsState());

  void fetchData() async {
    var resp = await _getStudentSlotsParentId(_userId);
    if (resp.data == null || resp.data!.isEmpty) {
      emit(state.copyWith(
          errorMsg: resp.error ?? AppStrings.dataNotFound, isLoading: false));
      return;
    }
    emit(state.copyWith(
        isLoading: false, errorMsg: null, times: resp.data ?? state.times));
  }
}
