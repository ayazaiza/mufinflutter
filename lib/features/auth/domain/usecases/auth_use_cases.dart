import '../../../academy/domain/usescases/user/user_exist.dart';
import 'user_sign_in.dart';
import 'user_sign_in_google.dart';
import 'user_sign_up.dart';

import 'forgot_password_use_case.dart';


class AuthUseCases {
  final UserSignIn userSignIn;
  final UserSignInWithGoogle userSignInNdUpWithGoogle;
  final UserSignUp userSignUp;
  final UserExists userExists;
  final ForgotPassword forgotPassword;

  AuthUseCases(
      {required this.userSignIn,
      required this.userSignInNdUpWithGoogle,
      required this.userExists,
      required this.userSignUp,
      required this.forgotPassword});
}
