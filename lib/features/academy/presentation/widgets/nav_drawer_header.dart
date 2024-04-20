import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/core/utils/app_local_assets.dart';
import 'package:flutter/material.dart';


class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppLocalAssets.appLogo,width: context.width * 0.4,)
           /*AppLocalAssets.musicIcon.toAssetIcon(size: 48,color: context.colorScheme.onPrimary),
            const SizedBox(
              height: 12,
            ),
            Text(
              AppStrings.appName,
              style: context.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onPrimary,
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
