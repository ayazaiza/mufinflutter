part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default("") String email,
    String? emailError,
    @Default("") String password,
    String? pwdError,
    @Default(true) bool pwdVisible,
    @Default("") String confirmPwd,
    String? confirmPwdError,
    @Default(true) bool confirmPwdVisible,
    @Default(false) bool acceptedTerms,
    String? errorMsg,
    String? successMsg,
    @Default(false) bool isLoading,
    String? route,
    String? respEmail,
    String? uuid}) = _Initial;
}
