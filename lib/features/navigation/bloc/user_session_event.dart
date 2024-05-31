part of 'user_session_bloc.dart';

abstract class UserSessionEvent extends Equatable {
  const UserSessionEvent();

  @override
  List<Object> get props => [];
}

class UserSessionInit extends UserSessionEvent {}

class UserSessionOnBoardEvent extends UserSessionEvent {}

class UserSessionOnBoardSkipEvent extends UserSessionEvent {}

class UserLoggedOutEvent extends UserSessionEvent {}
class UserDoLoggedOutEvent extends UserSessionEvent {}
class UserDelete extends UserSessionEvent {}


class UserLoggedInEvent extends UserSessionEvent {
  final UserModel userModel;

  const UserLoggedInEvent({required this.userModel});

  @override
  List<Object> get props => [userModel];
}
