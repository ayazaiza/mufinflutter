import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../navigation/user_session_bloc/user_session_bloc.dart';

part 'welcome_page_event.dart';

part 'welcome_page_state.dart';

part 'welcome_page_bloc.freezed.dart';

class WelcomePageBloc extends Bloc<WelcomePageEvent, WelcomePageState> {
  final UserSessionBloc _userSessionBloc;

  WelcomePageBloc({required UserSessionBloc userSessionBloc})
      : _userSessionBloc = userSessionBloc,
        super(const WelcomePageState.initial()) {
    on<WelcomePageEvent>((event, emit) {});
  }

  void _userExists() {}
}
