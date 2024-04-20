import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../domain/entities/student/student_attendance.dart';
import '../../../../domain/usescases/slot_attandance/get_attendance.dart';

part 'attendance_state.dart';

part 'attendance_cubit.freezed.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  final String _attendanceId;
  final GetAttendance _getAttendance;

  AttendanceCubit(
      {required String attendanceId, required GetAttendance getAttendance})
      : _getAttendance = getAttendance,
        _attendanceId = attendanceId,
        super(const AttendanceState());

  void fetchData() async {
    var resp = await _getAttendance.call(_attendanceId);
    if (resp.data == null) {
      emit(state.copyWith(
          error: resp.error ?? AppStrings.dataNotFound, isLoading: false));
      return;
    }
    emit(state.copyWith(
        attendance: resp.data ?? state.attendance, isLoading: false));
  }
}
