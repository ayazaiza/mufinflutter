import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class HeadingTitleWidget extends StatelessWidget {
  final String title;

  const HeadingTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: context.colorScheme.primary, shape: BoxShape.circle),
            child: Center(
                child: Text(
              title[0],
              style: context.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w800,
                  color: context.colorScheme.onPrimary),
            )),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
