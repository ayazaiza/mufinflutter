part of 'all_songs_cubit.dart';

@freezed
class AllSongsState with _$AllSongsState {
  const factory AllSongsState({
    @Default(true) bool isLoading,
    String? errorMsg,
    @Default([]) List<Song> songs,
  }) = _Initial;
}
