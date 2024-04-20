import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_local_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppLocalAssets.seed,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6)
              ),
                child: Image.asset(
              AppLocalAssets.appLogo,
              width: context.width * 0.5,
            )),
            const SizedBox(height: 12,),
            // const CircularProgressIndicator(),
            // const Text(AppStrings.appName)
          ],
        ),
      ),
    );
  }
}
