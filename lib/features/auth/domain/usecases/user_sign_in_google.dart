import 'dart:ui';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/resource.dart';
import 'package:academy/features/auth/domain/entities/user_model.dart';

import '../repository/firebase_user_auth_repo.dart';


class UserSignInWithGoogle implements UseCase<Resource<UserModel>, VoidCallback> {
  final FirebaseUserAuth firebaseUserAuth;
  UserSignInWithGoogle({required this.firebaseUserAuth});

  @override
  Future<Resource<UserModel>> call(VoidCallback params) async {
    return await firebaseUserAuth.signInWithGoogle(
        loading: params);
  }
}
