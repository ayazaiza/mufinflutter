import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/usescases/song/get_song.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/app_strings.dart';

part 'song_details_state.dart';

part 'song_details_cubit.freezed.dart';

class SongDetailsCubit extends Cubit<SongDetailsState> {
  final GetSong _getSong;
  final String _songId;

  SongDetailsCubit({required GetSong getSong, required String songId})
      : _getSong = getSong,
        _songId = songId,
        super(const SongDetailsState());

  void fetchData() async {
    var resp = await _getSong(_songId);
    if (resp.data == null) {
      emit(state.copyWith(
          isLoading: false,
          song: null,
          error: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    emit(state.copyWith(isLoading: false, song: resp.data));
  }
}
