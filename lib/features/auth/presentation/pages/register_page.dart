import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/common/widgets/action_bar_loader.dart';
import 'package:academy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';
import '../../../../core/utils/custom_widgets.dart';
import '../../../../core/utils/router_const.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final pwdController = useTextEditingController();
    final cnfPwdController = useTextEditingController();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: kDebugMode
              ? InkWell(
                  onTap: () {
                    var email = "test_riyaz168@gmail.com";
                    // var email = "test_riyaz${Random().nextInt(1000)}@gmail.com";
                    var name = "Test riyaz";
                    var pwd = "12345678";
                    emailController.text = email;
                    pwdController.text = pwd;
                    cnfPwdController.text = pwd;
                    context.read<AuthBloc>().add(
                        AuthEvent.testCred(email: email, pwd: pwd, name: name));
                  },
                  child: Text(
                    AppStrings.register,
                    style: context.textTheme.titleLarge!.copyWith(
                        color: context.colorScheme.primary,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5),
                  ),
                )
              : Text(
                  AppStrings.register,
                  style: context.textTheme.titleLarge!.copyWith(
                      color: context.colorScheme.primary,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5),
                ),
          actions: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return ActionBarLoader(isLoading: state.isLoading);
              },
            )
          ],
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.errorMsg != null) {
              Fluttertoast.showToast(
                  msg: state.errorMsg!,
                  toastLength: Toast.LENGTH_LONG,
                  timeInSecForIosWeb: 1,
                  backgroundColor: context.colorScheme.error);
              context.read<AuthBloc>().add(const AuthEvent.resetError());
              return;
            }
            if (state.successMsg != null &&
                state.uuid != null &&
                state.route != null) {
              Fluttertoast.showToast(
                  msg: kDebugMode
                      ? "${state.route} = ${state.uuid}"
                      : state.successMsg!,
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 1,
                  backgroundColor: context.colorScheme.primary);
              var route = Uri(path: state.route!, queryParameters: {
                "uuid": state.uuid!,
                "email": state.respEmail!
              }).toString();
              context.go(route);
            }
            /*if (state.successMsg != null) {
              Fluttertoast.showToast(
                  msg: state.successMsg!,
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 1,
                  backgroundColor: context.colorScheme.primary);
              context.go(PageRouteConstants.welcomePage.path);
            }*/
          },
          builder: (context, state) {
            return Container(
              padding: CustomWidgets.screenPadding,
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /*CustomWidgets.customTextFieldWithError(
                          controller: nameController,
                          errorMsg: state.nameError,
                          keyboardType: TextInputType.name,
                          prefixIcon: const Icon(Icons.person),
                          hintText: AppStrings.name,
                          context: context),*/
                      CustomWidgets.spacerHeight(),
                      CustomWidgets.customTextFieldWithError(
                          controller: emailController,
                          errorMsg: state.emailError,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: const Icon(Icons.mail_outline_outlined),
                          hintText: AppStrings.email,
                          context: context),
                      CustomWidgets.spacerHeight(),
                      CustomWidgets.customTextFieldWithError(
                          controller: pwdController,
                          errorMsg: state.pwdError,
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: const Icon(Icons.key),
                          obscureText: state.pwdVisible,
                          suffixIcon: IconButton(
                              onPressed: () {
                                BlocProvider.of<AuthBloc>(context).add(
                                    AuthEvent.pwdVisible(
                                        visible: !state.pwdVisible));
                              },
                              icon: Icon(state.pwdVisible
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined)),
                          hintText: AppStrings.password,
                          context: context),
                      CustomWidgets.spacerHeight(),
                      CustomWidgets.customTextFieldWithError(
                          controller: cnfPwdController,
                          errorMsg: state.confirmPwdError,
                          prefixIcon: const Icon(Icons.key),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: state.confirmPwdVisible,
                          suffixIcon: IconButton(
                              onPressed: () {
                                BlocProvider.of<AuthBloc>(context).add(
                                    AuthEvent.cnfPwdVisible(
                                        visible: !state.confirmPwdVisible));
                              },
                              icon: Icon(state.confirmPwdVisible
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined)),
                          hintText: AppStrings.confirmPassword,
                          context: context),
                      CustomWidgets.spacerHeight(),
                      CustomWidgets.customCheckBox(
                          isChecked: state.acceptedTerms,
                          onChanged: (value) {
                            BlocProvider.of<AuthBloc>(context)
                                .add(AuthEvent.acceptTerms(accepted: value!));
                          },
                          onPrivacyTap: () {
                            context.push(RoutePaths.privacyPolicy.path);
                          },
                          onTermsTap: () {
                            context.push(RoutePaths.terms.path);
                          },
                          color: context.colorScheme.primary,
                          style: context.textTheme.bodySmall),
                      CustomWidgets.spacerHeight(),
                      CustomWidgets.customButton(
                          actionText: AppStrings.createAccount.toUpperCase(),
                          context: context,
                          onPressed: !state.isLoading
                              ? () async {
                                  context.read<AuthBloc>().add(AuthEvent.submit(
                                      email: emailController.text.trim(),
                                      pwd: pwdController.text.trim(),
                                      cnfPwd: cnfPwdController.text.trim()));
                                }
                              : null),
                      CustomWidgets.spacerHeight(defaultHeight: 20),
                      CustomWidgets.customOptions(
                          context: context,
                          optionText: AppStrings.orWord.toUpperCase()),
                      CustomWidgets.spacerHeight(defaultHeight: 20),
                      CustomWidgets.customButtonWithIcon(
                          context: context,
                          assetImage: AppLocalAssets.googleIcon,
                          label: AppStrings.signUpWithGoogle,
                          onTap: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInNdUpWithGoogle());
                          }),
                      CustomWidgets.spacerHeight(defaultHeight: 30),
                      CustomWidgets.footerWidget(
                          deviceWidth: context.width,
                          onTap: () {
                            context.push(RoutePaths.login.path);
                          },
                          style: context.textTheme.bodySmall,
                          textOne: AppStrings.haveAnAccount,
                          textTwo: AppStrings.signIn,
                          color: context.colorScheme.primary,
                          context: context),
                      CustomWidgets.spacerHeight(defaultHeight: 30),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                AppStrings.about,
                                style: context.textTheme.bodySmall!.copyWith(
                                    color: context.colorScheme.primary,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            CustomWidgets.spacerWidth(defaultWidth: 6),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black54,
                              ),
                            ),
                            CustomWidgets.spacerWidth(defaultWidth: 6),
                            InkWell(
                              onTap: () {
                                context.push(RoutePaths.terms.path);
                              },
                              child: Text(
                                AppStrings.terms,
                                style: context.textTheme.bodySmall!.copyWith(
                                    color: context.colorScheme.primary,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

/*if (state.isLoading == LoadingState.show) {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      content: SizedBox(
                        width: double.infinity,
                        height: context.width / 4,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircularProgressIndicator(),
                              CustomWidgets.spacerHeight(defaultHeight: 16),
                              const Text(AppStrings.pleaseWait)
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }
            if (state.isLoading == LoadingState.hide) {
              Navigator.pop(context);
            }*/
