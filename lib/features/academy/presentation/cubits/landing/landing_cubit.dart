import 'dart:developer';

import 'package:academy/features/academy/domain/entities/utils/carousel_item.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/mufin_events.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/carousel_items_repo.dart';
import '../../../domain/repository/mufin_events_repo.dart';

part 'landing_state.dart';

part 'landing_cubit.freezed.dart';

class LandingCubit extends Cubit<LandingState> {
  final CarouselItemRepo _carouselItemRepo;
  final MufinEventsRepo _mufinEventsRepo;

  LandingCubit(
      {required CarouselItemRepo carouselItemRepo,
      required MufinEventsRepo mufinEventsRepo})
      : _carouselItemRepo = carouselItemRepo,
        _mufinEventsRepo = mufinEventsRepo,
        super(const LandingState()) {
    _fetchData();
  }

  void _fetchData() async {
    await Future.wait([_fetchCarouselData(), _fetchMufinEventsData()]);
  }

  Future<void> _fetchCarouselData() async {
    var resp = await _carouselItemRepo.getCarouselItems();
    log(resp.data.toString());
    emit(state.copyWith(
        isFetching: false, items: resp.data ?? [], errorMsg: resp.error));
  }

  Future<void> _fetchMufinEventsData() async {
    var resp = await _mufinEventsRepo.getMufinEvents();
    log(resp.data.toString());
    emit(state.copyWith(
        isFetching: false, events: resp.data ?? [], errorMsg: resp.error));
  }
}
