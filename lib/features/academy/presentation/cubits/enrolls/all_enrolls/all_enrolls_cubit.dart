import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/utils/resource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/courses/enroll_course.dart';
import '../../../../domain/usescases/enrolls/get_enrolls_stud_id.dart';
import '../../../../domain/usescases/enrolls/get_enrolls_user_id.dart';

part 'all_enrolls_state.dart';

part 'all_enrolls_cubit.freezed.dart';

class AllEnrollsCubit extends Cubit<AllEnrollsState> {
  final String _userId;
  final String? _studentId;
  final GetEnrollsUserId _getEnrollsUserId;
  final GetEnrollsStudId _getEnrollsStudId;

  AllEnrollsCubit(
      {required String userId,
      String? studentId,
      required GetEnrollsUserId getEnrollsUserId,
      required GetEnrollsStudId getEnrollsStudId})
      : _userId = userId,
        _studentId = studentId,
        _getEnrollsStudId = getEnrollsStudId,
        _getEnrollsUserId = getEnrollsUserId,
        super(const AllEnrollsState());

  void fetchData() async {
    if (_studentId != null) {
      _dataEmit(await _getEnrollsStudId(_studentId!));
      return;
    }
    _dataEmit(await _getEnrollsUserId(_userId));
  }

  void _dataEmit(Resource<List<EnrollCourse>> resp) {
    var data = resp.data;
    if (data == null || data.isEmpty) {
      emit(state.copyWith(
          isLoading: false,
          enrolls: [],
          errorMsg: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    emit(state.copyWith(
      isLoading: false,
      enrolls: resp.data!,
    ));
    return;
  }
}
