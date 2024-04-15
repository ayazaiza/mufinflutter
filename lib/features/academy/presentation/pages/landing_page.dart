import 'package:academy/core/common/widgets/events_carousel_widget.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/widgets/icon_widget.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/router_const.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          AppStrings.appName,
          style: context.textTheme.titleLarge?.copyWith(
              color: context.colorScheme.primary, fontWeight: FontWeight.w900),
        ),
        actions: [
          CustomIconButton(
            onPressed: () {
              context.push(RoutePaths.privacyPolicy.path);
            },
            iconData: Icons.privacy_tip_outlined,
            semanticLabel: AppStrings.privacyPolicy,
          ),
          CustomIconButton(
            onPressed: () {
              context.push(RoutePaths.login.path);
            },
            iconData: Icons.login_rounded,
            semanticLabel: AppStrings.login,
          ),
        ],
      ),
      body: const EventsCarousel(),
    );
  }
}
