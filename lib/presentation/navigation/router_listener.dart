import 'dart:async';

import 'package:academy/presentation/navigation/user_session_bloc/user_session_bloc.dart';
import 'package:flutter/material.dart';

class UserSessionListener extends ChangeNotifier {
  final UserSessionBloc _userSessionBloc;
  late final StreamSubscription? _streamSubscription;

  UserSessionListener({required UserSessionBloc userSessionBloc})
      : _userSessionBloc = userSessionBloc {
    listenState();
  }

  void listenState() {
    _streamSubscription =
        _userSessionBloc.stream.asBroadcastStream().listen((event) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
