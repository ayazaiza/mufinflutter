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
              flex: 2,
              child: Text(
                title,
                style: context.textTheme.bodySmall!,
                textAlign: TextAlign.start,
              )),
          Expanded(
              flex: 4,
              child: Text(
                detail,
                style: context.textTheme.bodyMedium!
                    .copyWith(
                    fontWeight: FontWeight.bold
                ),
              ))
        ],
      ),
    );
  }
}
