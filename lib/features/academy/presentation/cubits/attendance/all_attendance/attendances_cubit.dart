import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/student/student_attendance.dart';
import 'package:academy/features/academy/domain/usescases/slot_attandance/get_all_attendance.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

part 'attendances_state.dart';

part 'attendances_cubit.freezed.dart';

class AttendancesCubit extends Cubit<AttendancesState> {
  final GetAllAttendance _getAllAttendance;
  final String _enrollId;
  final String _studentId;

  AttendancesCubit(
      {required GetAllAttendance getAllAttendance,
      required String enrollId,
      required String studentId})
      : _getAllAttendance = getAllAttendance,
        _enrollId = enrollId,
        _studentId = studentId,
        super(const AttendancesState());

  void fetchData() async {
    var resp = await _getAllAttendance(Tuple2(_enrollId, _studentId));
    if (resp.data == null || resp.data!.isEmpty) {
      emit(state.copyWith(
          error: resp.error ?? AppStrings.dataNotFound, isLoading: false));
      return;
    }
    emit(state.copyWith(
        attendances: resp.data ?? state.attendances, isLoading: false));
  }
}
