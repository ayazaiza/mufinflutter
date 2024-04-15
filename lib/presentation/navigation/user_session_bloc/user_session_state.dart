part of 'user_session_bloc.dart';

abstract class UserSessionState extends Equatable {
  const UserSessionState();

  @override
  List<Object> get props => [];
}

class UserSessionSplashState extends UserSessionState {}

class UserSessionLandingState extends UserSessionState {}

class UserSessionOnBoardState extends UserSessionState {}

class UserLoggedInState extends UserSessionState {
  final UserModel userModel;

  const UserLoggedInState({required this.userModel});

  @override
  List<Object> get props => [userModel];
}
