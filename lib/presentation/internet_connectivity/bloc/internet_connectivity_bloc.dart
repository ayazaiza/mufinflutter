import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'internet_connectivity_event.dart';

part 'internet_connectivity_state.dart';

class InternetConnectivityBloc
    extends Bloc<InternetConnectivityEvent, InternetConnectivityState> {
  final Connectivity _connectivity;
  StreamSubscription? streamSubscription;

  InternetConnectivityBloc({required Connectivity connectivity})
      : _connectivity = connectivity,
        super(InternetConnectivityInitial()) {
    monitorConnectivity();
    on<InternetConnectivityEvent>((event, emit) {});
  }

  void monitorConnectivity() {
    streamSubscription?.cancel();
    streamSubscription =
        _connectivity.onConnectivityChanged.listen((connection) {
          if (connection == ConnectivityResult.none) {} else
          if (connection == ConnectivityResult.mobile ||
              connection == ConnectivityResult.wifi) {}
        });
  }
}
