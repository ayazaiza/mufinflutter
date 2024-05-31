import 'dart:async';

import 'package:academy/features/auth/domain/entities/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../academy/domain/repository/shared_prefs_repo.dart';
import '../../auth/domain/repository/firebase_user_auth_repo.dart';

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
    on<UserSessionOnBoardEvent>((event, emit) async {
      // await Future.delayed(const Duration(seconds: 10));
      emit(UserSessionOnBoardState());
    });
    on<UserSessionOnBoardSkipEvent>((event, emit) {
      _getStarted();
    });
    on<UserLoggedOutEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      emit(UserSessionLandingState());
    });
    on<UserDoLoggedOutEvent>((event, emit) async {
      await _firebaseUserAuth.signOut();
    });
    on<UserLoggedInEvent>((event, emit) async {
      // await Future.delayed(const Duration(seconds: 2));
      emit(UserLoggedInState(userModel: event.userModel));
    });

    on<UserDelete>((event, emit) {
      _delete();
    });
  }

  void _initCheck(UserSessionInit event, Emitter emitter) async {
    try {
      await _firebaseUserAuth.checkUserExist();
      _listenEvent();
    } catch (_) {
      _switchToLogout();
    }
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

  void _switchToLogout() async {
    if (!_sharedPrefsRepo.onBoard) {
      add(UserSessionOnBoardEvent());
      return;
    }
    add(UserLoggedOutEvent());
  }

  void _getStarted() async {
    await _sharedPrefsRepo.setOnBoard();
    _switchToLogout();
  }

  void _delete() async {
    await _firebaseUserAuth.deleteUser();
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
