import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/resource.dart';
import '../repository/firebase_user_auth_repo.dart';

class ForgotPassword implements UseCase<Resource<String>, String> {
  final FirebaseUserAuth firebaseUserAuth;

  ForgotPassword({required this.firebaseUserAuth});

  @override
  Future<Resource<String>> call(String params) async {
    return await firebaseUserAuth.forgotPassword(email: params);
  }
}
