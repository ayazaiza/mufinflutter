part of 'song_details_cubit.dart';

@freezed
class SongDetailsState with _$SongDetailsState {
  const factory SongDetailsState(
      {Song? song, @Default(true) bool isLoading, String? error}) = _Initial;
}
