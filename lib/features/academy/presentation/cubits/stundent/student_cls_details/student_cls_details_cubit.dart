import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/slot/student_times.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:academy/features/academy/domain/usescases/slot_attandance/get_student_slot_time.dart';

part 'student_cls_details_state.dart';

part 'student_cls_details_cubit.freezed.dart';

class StudentClsDetailsCubit extends Cubit<StudentClsDetailsState> {
  final String _studentTimeDocId;
  final GetStudentSlotTime _getStudentSlotTime;

  StudentClsDetailsCubit(
      {required String studentTimeDocId,
      required GetStudentSlotTime getStudentSlotTime})
      : _getStudentSlotTime = getStudentSlotTime,
        _studentTimeDocId = studentTimeDocId,
        super(const StudentClsDetailsState());

  void fetchData() async {
    var resp = await _getStudentSlotTime(_studentTimeDocId);
    if (resp.data == null) {
      emit(state.copyWith(
          isLoading: false, error: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    emit(state.copyWith(isLoading: false, studentTimes: resp.data));
  }
}
