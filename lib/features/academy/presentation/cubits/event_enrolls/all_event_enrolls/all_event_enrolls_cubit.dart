import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/usescases/event_enrolls/get_event_enrolls.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/app_strings.dart';

part 'all_event_enrolls_state.dart';

part 'all_event_enrolls_cubit.freezed.dart';

class AllEventEnrollsCubit extends Cubit<AllEventEnrollsState> {
  final String _userId;
  final GetEventEnrolls _getEventEnrolls;

  AllEventEnrollsCubit(
      {required String userId, required GetEventEnrolls getEventEnrolls})
      : _userId = userId,
        _getEventEnrolls = getEventEnrolls,
        super(const AllEventEnrollsState());

  void fetchData() async {
    var resp = await _getEventEnrolls(_userId);
    if (resp.data == null || resp.data!.isEmpty) {
      emit(state.copyWith(
          isLoading: false, errorMsg: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    if (!isClosed) {
      emit(state.copyWith(isLoading: false, eventEnrolls: resp.data!));
    }
  }
}
