import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class ButtonWithIconWidget extends StatelessWidget {
  final void Function() onPressed;
  final String name;

  const ButtonWithIconWidget(
      {super.key, required this.onPressed, required this.name});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.info),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                name,
                style: context.textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ));
  }
}
