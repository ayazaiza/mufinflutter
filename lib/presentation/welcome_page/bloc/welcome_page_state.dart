part of 'welcome_page_bloc.dart';

@freezed
class WelcomePageState with _$WelcomePageState {
  const factory WelcomePageState.initial() = _Initial;
  const factory WelcomePageState.homePageState() = _HomePageState;
  const factory WelcomePageState.updateProfileState() = _UpdateProfileState;
  const factory WelcomePageState.unknownState() = _UnknownState;
}
