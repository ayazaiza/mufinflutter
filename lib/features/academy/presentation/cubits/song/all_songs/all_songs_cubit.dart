import 'package:academy/features/academy/domain/entities/utils/song.dart';
import 'package:academy/features/academy/domain/usescases/song/get_songs_user_id.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/app_strings.dart';

part 'all_songs_state.dart';

part 'all_songs_cubit.freezed.dart';

class AllSongsCubit extends Cubit<AllSongsState> {
  final GetSongsUserId _getSongsUserId;
  final String _uuid;

  AllSongsCubit({required GetSongsUserId getSongsUserId, required String uuid})
      : _getSongsUserId = getSongsUserId,
        _uuid = uuid,
        super(const AllSongsState());

  void fetchData() async {
    var resp = await _getSongsUserId(_uuid);
    if (resp.data == null || resp.data!.isEmpty) {
      emit(state.copyWith(
          isLoading: false, errorMsg: resp.error ?? AppStrings.dataNotFound));
      return;
    }
    if (!isClosed) {
      emit(state.copyWith(isLoading: false, songs: resp.data!));
    }
  }
}
