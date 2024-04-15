import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  final String title;
  final String detail;

  const DetailsWidget({super.key, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Text(
                title,
                style: context.textTheme.bodySmall!,
                textAlign: TextAlign.start,
              )),
          Expanded(
              flex: 3,
              child: Text(
                detail,
                style: context.textTheme.bodyLarge!
                    .copyWith(
                    fontWeight: FontWeight.bold
                ),
              ))
        ],
      ),
    );
  }
}
