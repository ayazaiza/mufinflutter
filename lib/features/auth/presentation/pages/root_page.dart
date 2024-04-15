import 'package:academy/core/utils/router_const.dart';
import 'package:academy/features/auth/presentation/cubit/root_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../presentation/navigation/user_session_bloc/user_session_bloc.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        actions: [
          if (kDebugMode)
            IconButton(
                onPressed: () {
                  context.read<UserSessionBloc>().add(UserDoLoggedOutEvent());
                },
                icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: BlocListener<RootCubit, RootState>(
        listener: (context, state) {
          if (state is RootToProfileUpdate) {
            context.go(
                Uri(
                path: state.route,
                queryParameters: {
                  "uuid": state.uuid,
                  "complete": AppStrings.completeUrProfile,
                  "email":state.email
                }).toString());
            return;
          }
          if (state is RootToHome) {
            context.go(Uri(
                path: state.route,
                queryParameters: {"uuid": state.uuid}).toString());
            return;
          }
          if (state is RootToHome) {
            context.go(RoutePaths.landing.path);
            return;
          }
        },
        child: const SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(AppStrings.appName),
                // SizedBox(
                //   height: 24,
                // ),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
