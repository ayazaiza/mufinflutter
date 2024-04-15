part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // const factory AuthEvent.started() = _Started;

  const factory AuthEvent.acceptTerms({required bool accepted}) = AcceptTerms;

  const factory AuthEvent.pwdVisible({required bool visible}) = PwdVisible;

  const factory AuthEvent.cnfPwdVisible({required bool visible}) =
      CnfPwdVisible;

  const factory AuthEvent.emailChange({required String email}) = EmailChange;

  const factory AuthEvent.pwdChange({required String pwd}) = PwdChange;

  const factory AuthEvent.cnfPwdChange({required String cnfPwd}) = CnfPwdChange;

  const factory AuthEvent.signInNdUpWithGoogle() = SignInNdUpWithGoogle;

  const factory AuthEvent.resetError() = ResetError;

  const factory AuthEvent.resetSuccess() = ResetSuccess;

  const factory AuthEvent.onLoading({required bool loading}) = OnLoading;
  const factory AuthEvent.submitEmail({required String email}) = SubmitEmail;

  const factory AuthEvent.testCred(
      {required String email,
      required String pwd,
      required String name}) = TestCred;
  const factory AuthEvent.login(
      {required String email, required String password }) = Login;

  const factory AuthEvent.testLogin(
      {required String email, required String pwd}) = TestLogin;

  const factory AuthEvent.submit({
    required String email,
    required String pwd,
    required String cnfPwd
  }) = Submit;

  const factory AuthEvent.checkUserExists({required String uuid}) =
  CheckUserExists;
}
