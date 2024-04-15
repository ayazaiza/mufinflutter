import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_local_assets.dart';

class ErrorScreen extends StatelessWidget {
  final String? error;

  const ErrorScreen({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLocalAssets.musicIcon
              .toAssetIcon(size: 48.0, color: context.colorScheme.primary),
          const SizedBox(
            height: 8,
          ),
          Text(
            error ?? AppStrings.dataNotFound,
            style: context.textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
