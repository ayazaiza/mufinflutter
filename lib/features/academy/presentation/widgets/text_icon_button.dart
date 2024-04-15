import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  final void Function()? onTap;
  final IconData iconData;
  final String text;

  const TextIconButton(
      {super.key,
      required this.onTap,
      required this.iconData,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 18,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text.toUpperCase(),
              style: context.textTheme.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
