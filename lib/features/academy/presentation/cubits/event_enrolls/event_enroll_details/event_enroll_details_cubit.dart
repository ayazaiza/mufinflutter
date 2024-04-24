import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/event_enroll.dart';
import 'package:academy/features/academy/domain/usescases/event_enrolls/get_event_enroll.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_enroll_details_state.dart';

part 'event_enroll_details_cubit.freezed.dart';

class EventEnrollDetailsCubit extends Cubit<EventEnrollDetailsState> {
  final String _id;
  final GetEventEnroll _getEventEnroll;

  EventEnrollDetailsCubit(
      {required String id, required GetEventEnroll getEventEnroll})
      : _id = id,
        _getEventEnroll = getEventEnroll,
        super(const EventEnrollDetailsState());

  void fetchData() async {
    var resp = await _getEventEnroll(_id);
    if (resp.data == null) {
      emit(state.copyWith(
          isLoading: false,
          eventEnroll: null,
          error: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    emit(state.copyWith(isLoading: false, eventEnroll: resp.data));
  }
}
