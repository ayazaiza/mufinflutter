import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/app_local_assets.dart';
import '../../../../navigation/bloc/user_session_bloc.dart';
import '../../widgets/nav_drawer_custom_item.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.settings),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavDrawerCustomItem(
                text: AppStrings.logout,
                icon: AppLocalAssets.logoutIcon,
                onTap: () {
                  context.read<UserSessionBloc>().add(UserDoLoggedOutEvent());
                }),
            NavDrawerCustomItem(
                text: AppStrings.deleteAccount,
                icon: AppLocalAssets.deleteAccountIcon,
                onTap: () {
                  showConfirm(context);
                }),
          ],
        ),
      ),
    );
  }

  void showConfirm(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(AppStrings.deleteAccount),
            content: const Text(AppStrings.deleteAccountDesc),
            actions: [
              TextButton(
                child: Text(
                  AppStrings.delete,
                  style: context.textTheme.bodyLarge!
                      .copyWith(color: context.colorScheme.error),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  context.read<UserSessionBloc>().add(UserDelete());
                },
              ),
              TextButton(
                child: Text(
                  AppStrings.cancel,
                  style: context.textTheme.bodyLarge,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
