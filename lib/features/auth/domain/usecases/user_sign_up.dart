import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/resource.dart';
import 'package:academy/features/auth/domain/entities/user_auth_model.dart';
import 'package:academy/features/auth/domain/entities/user_model.dart';

import '../repository/firebase_user_auth_repo.dart';


class UserSignUp implements UseCase<Resource<UserModel>, UserAuthModel> {
  final FirebaseUserAuth firebaseUserAuth;

  UserSignUp({required this.firebaseUserAuth});

  @override
  Future<Resource<UserModel>> call(UserAuthModel params) async {
    return await firebaseUserAuth.createUserWithEmailPassword(
        userAuthModel: params);
  }
}
