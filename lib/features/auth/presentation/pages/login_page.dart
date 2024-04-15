import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';
import '../../../../core/utils/custom_widgets.dart';
import '../../../../core/utils/router_const.dart';
import '../../../../core/common/widgets/action_bar_loader.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kDebugMode
            ? InkWell(
                onTap: () {
                  var email = "riyaznaz143@gmail.com";
                  var pwd = "riyaz123";
                  emailController.text = email;
                  pwdController.text = pwd;
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.testLogin(email: email, pwd: pwd));
                },
                child: Text(
                  AppStrings.login,
                  style: context.textTheme.titleLarge!.copyWith(
                      // color: context.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
              )
            : null,
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
                backgroundColor: context.colorScheme.primary);
            var route = Uri(path: state.route!, queryParameters: {
              "uuid": state.uuid!,
              "email": state.respEmail!
            }).toString();
            context.go(route);
          }
        },
        builder: (context, state) {
          return Container(
            padding: CustomWidgets.screenPadding,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AppStrings.login,
                        style: context.textTheme.displaySmall!.copyWith(
                            color: context.colorScheme.primary,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    CustomWidgets.spacerHeight(defaultHeight: 32),
                    CustomWidgets.customTextFieldWithError(
                        controller: emailController,
                        errorMsg: state.emailError,
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: const Icon(Icons.mail_outline_outlined),
                        hintText: AppStrings.email,
                        context: context),
                    CustomWidgets.spacerHeight(defaultHeight: 24),
                    CustomWidgets.customTextFieldWithError(
                        controller: pwdController,
                        errorMsg: state.pwdError,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: const Icon(Icons.key),
                        obscureText: state.pwdVisible,
                        suffixIcon: IconButton(
                            onPressed: () {
                              context.read<AuthBloc>().add(AuthEvent.pwdVisible(
                                  visible: !state.pwdVisible));
                            },
                            icon: Icon(state.pwdVisible
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off_outlined)),
                        hintText: AppStrings.password,
                        context: context),
                    CustomWidgets.spacerHeight(defaultHeight: 24),
                    CustomWidgets.customButton(
                        actionText: AppStrings.login.toUpperCase(),
                        context: context,
                        onPressed: !state.isLoading
                            ? () {
                                context.read<AuthBloc>().add(AuthEvent.login(
                                      email: emailController.text,
                                      password: pwdController.text,
                                    ));
                              }
                            : null),
                    CustomWidgets.spacerHeight(defaultHeight: 36),
                    CustomWidgets.customOptions(
                        context: context,
                        optionText: AppStrings.orWord.toUpperCase()),
                    CustomWidgets.spacerHeight(defaultHeight: 30),
                    CustomWidgets.customButtonWithIcon(
                        context: context,
                        assetImage: AppLocalAssets.googleIcon,
                        label: AppStrings.signInWithGoogle,
                        onTap: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signInNdUpWithGoogle());
                        }),
                    CustomWidgets.spacerHeight(defaultHeight: 30),
                    CustomWidgets.footerWidget(
                        deviceWidth: context.width,
                        onTap: () {
                          context
                              .push(RoutePaths.register.path);
                        },
                        style: context.textTheme.bodySmall,
                        textOne: AppStrings.doesNotHaveAnAccount,
                        textTwo: AppStrings.signUp,
                        color: context.colorScheme.primary,
                        context: context),
                    CustomWidgets.spacerHeight(defaultHeight: 30),
                    InkWell(
                      onTap: () {
                        context
                            .push(RoutePaths.forgotPassword.path);
                      },
                      child: Text(
                        AppStrings.forgotPwd,
                        style: context.textTheme.bodySmall!.copyWith(
                            color: context.colorScheme.primary,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/* return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text("Login screen"),
      ),
    );*/

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
                            CustomWidgets.spacerHeight(defaultHeight: 20),
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
