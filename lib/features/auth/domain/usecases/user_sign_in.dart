import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/resource.dart';
import '../entities/user_auth_model.dart';
import '../entities/user_model.dart';
import '../repository/firebase_user_auth_repo.dart';

class UserSignIn implements UseCase<Resource<UserModel>, UserAuthModel> {
  final FirebaseUserAuth firebaseUserAuth;

  UserSignIn({required this.firebaseUserAuth});

  @override
  Future<Resource<UserModel>> call(UserAuthModel params) async {
    return await firebaseUserAuth.signInWithEmailPassword(
        params.email, params.password);
  }
}
