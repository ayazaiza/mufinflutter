part of 'view_profile_cubit.dart';

@freezed
class ViewProfileState with _$ViewProfileState {
  const factory ViewProfileState(
      {@Default(true) bool isLoading,
      String? error,
      MufinUser? mufinUser}) = _Initial;
}
