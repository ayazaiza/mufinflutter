import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/form_validation.dart';
import '../../../../core/utils/resource.dart';
import '../../../../core/utils/router_const.dart';
import '../../domain/entities/user_auth_model.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/usecases/auth_use_cases.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCases _authUseCases;

  AuthBloc({required AuthUseCases authUseCases})
      : _authUseCases = authUseCases,
        super(const AuthState()) {
    // on<AuthEvent>((event, emit) {});
    on<Submit>(_register);
    on<SubmitEmail>(_forgotPwd);
    on<TestLogin>((event, emit) {
      emit(state.copyWith(email: event.email, password: event.pwd));
      add(AuthEvent.login(email: event.email, password: event.pwd));
    });
    on<TestCred>((event, emit) {
      emit(state.copyWith(
          acceptedTerms: true,
          email: event.email,
          password: event.pwd,
          confirmPwd: event.pwd));
      add(AuthEvent.submit(
          email: event.email, pwd: event.pwd, cnfPwd: event.pwd));
    });
    on<Login>(_login);
    on<PwdVisible>((event, emit) {
      emit(state.copyWith(pwdVisible: event.visible));
    });
    on<CnfPwdVisible>((event, emit) {
      emit(state.copyWith(confirmPwdVisible: event.visible));
    });
    on<ResetSuccess>((event, emit) {
      emit(state.copyWith(successMsg: null, isLoading: false));
    });
    on<OnLoading>((event, emit) {
      emit(state.copyWith(isLoading: event.loading));
    });
    on<ResetError>((event, emit) {
      emit(state.copyWith(errorMsg: null, isLoading: false));
    });
    on<AcceptTerms>((event, emit) {
      emit(state.copyWith(acceptedTerms: event.accepted));
    });
    // on<CheckUserExists>(_fetchUser);
    on<SignInNdUpWithGoogle>(_signInAdUpWithGoogle);
  }

  void _forgotPwd(SubmitEmail event, Emitter emit) async {
    var emailError = FormValidationRegex.emailValidate(event.email);
    emit(state.copyWith(emailError: emailError));
    if (emailError != null) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    var resp = await _authUseCases.forgotPassword(event.email);
    emit(state.copyWith(
        successMsg: resp.data, errorMsg: resp.error, isLoading: false));
  }

  void _register(Submit event, Emitter emit) async {
    if (!state.acceptedTerms) {
      emit(state.copyWith(errorMsg: AppStrings.pleaseAcceptTerms));
      return;
    }
    var emailError = FormValidationRegex.emailValidate(event.email);
    var passwordError = FormValidationRegex.passwordValidate(event.pwd);
    var confirmPasswordError = FormValidationRegex.passwordValidate(
        event.cnfPwd,
        msg: AppStrings.enterConfirmPassword);
    // var nameError = FormValidationRegex.fullNameValidate(event.name);
    var passwordMatch =
        event.pwd != event.cnfPwd ? AppStrings.confirmPwdNotMatch : null;
    var hasError = [
      emailError,
      passwordError,
      confirmPasswordError,
      passwordMatch
    ].any((element) => element != null);
    emit(state.copyWith(
        emailError: emailError,
        pwdError: passwordError,
        confirmPwdError: confirmPasswordError ?? passwordMatch));
    if (hasError) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    var resp = await _authUseCases
        .userSignUp(UserAuthModel(email: event.email, password: event.pwd));
    _response(resp, emit);
  }

  void _signInAdUpWithGoogle(SignInNdUpWithGoogle event, Emitter emit) async {
    var resp = await _authUseCases.userSignInNdUpWithGoogle(() {
      emit(state.copyWith(isLoading: true));
    });
    _response(resp, emit);
  }

  // void _fetchUser(CheckUserExists event, Emitter emit) async {
  //   var user = await _authUseCases.userExists(event.uuid);
  //   var mufinUser = user.data;
  //   emit(state.copyWith(
  //       route: mufinUser != null && mufinUser.userId != ""
  //           ? PageRouteConstants.homePageRoute.path
  //           : PageRouteConstants.profileUpdateRoute.path,
  //       uuid: event.uuid,
  //       errorMsg: null,
  //       successMsg: AppStrings.success,
  //       isLoading: false));
  // }

  void _login(Login event, Emitter emit) async {
    var emailError = FormValidationRegex.emailValidate(event.email);
    var passwordError = FormValidationRegex.passwordValidate(event.password);
    var hasError = [
      emailError,
      passwordError,
    ].any((element) => element != null);
    emit(state.copyWith(emailError: emailError, pwdError: passwordError));
    if (hasError) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    var resp = await _authUseCases.userSignIn(
        UserAuthModel(email: event.email, password: event.password));
    _response(resp, emit);
  }

  void _response(Resource<UserModel> resp, Emitter emit) async {
    var userModel = resp.data;
    if (userModel != null && userModel.uid != null) {
      emit(state.copyWith(
          route: RoutePaths.root.path,
          uuid: userModel.uid,
          errorMsg: null,
          respEmail: userModel.email,
          successMsg: AppStrings.success,
          isLoading: false));
      // add(AuthEvent.checkUserExists(uuid: userModel.uid!));
      return;
    }
    emit(state.copyWith(
        errorMsg: resp.error ?? AppStrings.somethingWentWrong,
        isLoading: false));
  }
}

// var user = await _loginUseCases.userExists(userModel.uid!);
// var mufinUser = user.data;
// emit(state.copyWith(
//     // route: mufinUser != null && mufinUser.userId != ""
//     //     ? PageRouteConstants.homePageRoute.path
//     //     : PageRouteConstants.profileUpdateRoute.path,
//     // uuid: userModel.uid ?? mufinUser?.userId,
//     errorMsg: resp.error,
//     successMsg: AppStrings.loginSuccess,
//     isLoading: false));
