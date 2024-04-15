import 'package:academy/core/extensions/extension_mapper.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class NavDrawerCustomItem extends StatelessWidget {
  final String text;
  final String icon;
  final void Function() onTap;
  final bool hasDiv;

  const NavDrawerCustomItem(
      {super.key,
      required this.text,
      required this.icon,
      required this.onTap,
      this.hasDiv = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hasDiv
            ? const Divider()
            : const SizedBox(
                height: 10,
              ),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                icon.toAssetIcon(color: context.colorScheme.primary),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Text(
                  text,
                  style: context.textTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w500),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
