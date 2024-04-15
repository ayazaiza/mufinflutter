import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/common/widgets/action_bar_loader.dart';
import 'package:academy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/custom_widgets.dart';
import '../../../../core/utils/router_const.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.forgotPwd),
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
            context
                .read<AuthBloc>()
                .add(const AuthEvent.resetError());
          }
          if (state.successMsg != null) {
            Fluttertoast.showToast(
                msg: state.successMsg!,
                toastLength: Toast.LENGTH_SHORT,
                timeInSecForIosWeb: 1,
                backgroundColor: context.colorScheme.primary);
            context.go(RoutePaths.landing.path);
          }
        },
        builder: (context, state) {
          return Container(
            padding: CustomWidgets.screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomWidgets.customTextFieldWithError(
                    controller: emailController,
                    errorMsg: state.emailError,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.mail_outline_outlined),
                    hintText: AppStrings.registeredEmail,
                    context: context),
                CustomWidgets.spacerHeight(),
                CustomWidgets.customButton(
                    elevation: 0,
                    actionText: AppStrings.sendResetLink.toUpperCase(),
                    context: context,
                    onPressed: !state.isLoading
                        ? () {
                            context
                                .read<AuthBloc>()
                                .add(AuthEvent.submitEmail(
                                  email: emailController.text,
                                ));
                          }
                        : null),
                CustomWidgets.spacerHeight(defaultHeight: 30),
                Text(
                  AppStrings.forgotPwdProcess,
                  style: context.textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
