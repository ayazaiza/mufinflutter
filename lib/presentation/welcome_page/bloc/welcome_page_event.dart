part of 'welcome_page_bloc.dart';

@freezed
class WelcomePageEvent with _$WelcomePageEvent {
  const factory WelcomePageEvent.started() = _Started;
  const factory WelcomePageEvent.updateProfile() = _UpdateProfileEvent;
  const factory WelcomePageEvent.homePageEvent() = _HomePageEvent;
  const factory WelcomePageEvent.unknownEvent() = _UnknownEvent;
}
