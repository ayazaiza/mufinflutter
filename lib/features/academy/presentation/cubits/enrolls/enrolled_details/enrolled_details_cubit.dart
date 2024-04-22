import 'dart:developer';

import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/courses/enroll_course.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../../../domain/entities/slot/student_times.dart';
import '../../../../domain/usescases/enrolls/get_enroll_course.dart';
import '../../../../domain/usescases/slot_attandance/get_students_slot_times.dart';

part 'enrolled_details_state.dart';

part 'enrolled_details_cubit.freezed.dart';

class EnrolledDetailsCubit extends Cubit<EnrolledDetailsState> {
  final String _enrollId;
  final String? _instructorId;
  final GetEnrollCourse _getEnrollCourse;
  final GetStudentsSlotTimes _getStudentsSlotTimes;

  EnrolledDetailsCubit(
      {required String enrollId,
      required GetEnrollCourse getEnrollCourse,
      required GetStudentsSlotTimes getStudentsSlotTimes,
      String? instructorId})
      : _enrollId = enrollId,
        _instructorId = instructorId,
        _getEnrollCourse = getEnrollCourse,
        _getStudentsSlotTimes = getStudentsSlotTimes,
        super(const EnrolledDetailsState());

  void fetchData() async {
    await Future.wait([_fetchEnroll(), _fetchTimes()]);
    log(state.toString());
  }

  Future<void> _fetchEnroll() async {
    var resp = await _getEnrollCourse(_enrollId);
    if (resp.data == null) {
      emit(state.copyWith(
          error: resp.error ?? AppStrings.dataNotFound, isLoading: false));
      return;
    }
    emit(state.copyWith(enrollCourse: resp.data, isLoading: false));
  }

  Future<void> _fetchTimes() async {
    if (_instructorId == null) return;
    var resp = await _getStudentsSlotTimes(Tuple2(_enrollId, _instructorId!));
    if (resp.data == null || resp.data!.isEmpty) {
      return;
    }
    emit(state.copyWith(studentTimes: resp.data ?? state.studentTimes));
  }
}
