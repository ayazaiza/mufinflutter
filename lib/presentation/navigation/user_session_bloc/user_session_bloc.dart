import 'dart:async';
import 'dart:developer';

import 'package:academy/features/auth/domain/entities/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../features/academy/domain/repository/shared_prefs_repo.dart';
import '../../../features/auth/domain/repository/firebase_user_auth_repo.dart';

part 'user_session_event.dart';

part 'user_session_state.dart';

class UserSessionBloc extends Bloc<UserSessionEvent, UserSessionState> {
  final FirebaseUserAuth _firebaseUserAuth;
  StreamSubscription? _streamSubscription;
  final SharedPrefsRepo _sharedPrefsRepo;

  UserSessionBloc(
      {required FirebaseUserAuth firebaseUserAuth,
      required SharedPrefsRepo sharedPrefsRepo})
      : _firebaseUserAuth = firebaseUserAuth,
        _sharedPrefsRepo = sharedPrefsRepo,
        super(UserSessionSplashState()) {
    on<UserSessionInit>(_initCheck);
    on<UserSessionOnBoardEvent>((event, emit) {
      emit(UserSessionOnBoardState());
    });
    on<UserSessionOnBoardSkipEvent>((event, emit) {
      _getStarted();
    });
    on<UserLoggedOutEvent>((event, emit) {
      emit(UserSessionLandingState());
    });
    on<UserDoLoggedOutEvent>((event, emit) async {
      await _firebaseUserAuth.signOut();
    });
    on<UserLoggedInEvent>((event, emit) {
      emit(UserLoggedInState(userModel: event.userModel));
    });
  }

  void _initCheck(UserSessionInit event, Emitter emitter) {
    _firebaseUserAuth.checkUserExist().catchError((onError) {
      _switchToLogout();
    }).then((value) {
      _listenEvent();
    });
  }

  void _listenEvent() {
    _streamSubscription?.cancel();
    _streamSubscription = _firebaseUserAuth.userSession().listen((userModel) {
      if (userModel == null) {
        _switchToLogout();
        return;
      }
      add(UserLoggedInEvent(userModel: userModel));
    });
  }

  void _switchToLogout() {
    if (!_sharedPrefsRepo.onBoard) {
      add(UserSessionOnBoardEvent());
      return;
    }
    add(UserLoggedOutEvent());
  }

  void _getStarted() async {
    _sharedPrefsRepo.setOnBoard().then((value) {
      _switchToLogout();
    });
  }

  @override
  Future<void> close() {
    log("UserSessionBloc closed");
    _streamSubscription?.cancel();
    return super.close();
  }
}
