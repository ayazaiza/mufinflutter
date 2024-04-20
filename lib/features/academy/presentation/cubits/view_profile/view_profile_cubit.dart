import 'package:academy/features/academy/domain/entities/user/mufin_user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../domain/usescases/user/user_exist.dart';

part 'view_profile_state.dart';

part 'view_profile_cubit.freezed.dart';

class ViewProfileCubit extends Cubit<ViewProfileState> {
  final String _uuid;
  final UserExists _userExists;

  ViewProfileCubit({required String uuid, required UserExists userExists})
      : _uuid = uuid,
        _userExists = userExists,
        super(const ViewProfileState());

  void fetchData() async {
    var user = await _userExists(_uuid);
    if (user.data == null) {
      emit(state.copyWith(
          error: user.error ?? AppStrings.dataNotFound, isLoading: false));
      return;
    }
    emit(state.copyWith(
        mufinUser: user.data ?? state.mufinUser, isLoading: false));
  }
}
