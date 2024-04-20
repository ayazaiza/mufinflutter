
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/utils/router_const.dart';
import '../../../academy/domain/usescases/user/user_exist.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  final UserExists _userExists;
  final String? _uuid;
  final String? _email;

  RootCubit(
      {required UserExists userExists,
      required String uuid,
      required String email})
      : _userExists = userExists,
        _uuid = uuid,
        _email = email,
        super(RootInitial()) {
    checkUser();
  }

  void checkUser() async {
    log("_uuuu: ${_uuid}");
    if (_uuid == null) {
      emit(RootToLanding(route: RoutePaths.landing.path));
      return;
    }
    var resp = await _userExists(_uuid!);
    // await Future.delayed(const Duration(seconds: 2));
    if (resp.data == null) {
      emit(RootToProfileUpdate(
          route: RoutePaths.profileUpdate.path,
          uuid: _uuid,
          email: _email));
      return;
    }

    emit(RootToHome(
        route: RoutePaths.home.path,
        uuid: _uuid,
        email: resp.data!.email));
  }
}
