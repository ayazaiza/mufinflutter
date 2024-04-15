import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/app_local_assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           AppLocalAssets.musicIcon.toAssetIcon(size: 48,color: context.colorScheme.onPrimary),
            const SizedBox(
              height: 12,
            ),
            Text(
              AppStrings.appName,
              style: context.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onPrimary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
