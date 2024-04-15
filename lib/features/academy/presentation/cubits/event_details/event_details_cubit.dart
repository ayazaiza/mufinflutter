import 'package:academy/features/academy/domain/entities/event_enrolls/mufin_events.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/mufin_events_repo.dart';

part 'event_details_state.dart';

part 'event_details_cubit.freezed.dart';

class EventDetailsCubit extends Cubit<EventDetailsState> {
  final MufinEventsRepo _mufinEventsRepo;
  final String _eventId;

  EventDetailsCubit(
      {required MufinEventsRepo mufinEventsRepo, required String eventId})
      : _mufinEventsRepo = mufinEventsRepo,
        _eventId = eventId,
        super(const EventDetailsState()) {
    fetchData();
  }

  void fetchData() async {
    var resp = await _mufinEventsRepo.getMufinEvent(_eventId);
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(mufinEvents: resp.data, isLoading: false));
  }
}
