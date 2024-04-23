import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? third;
  final Widget icon;

  const ListItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.third});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: context.colorScheme.surfaceVariant.withOpacity(0.5)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: context.colorScheme.primary, shape: BoxShape.circle),
            child: Center(child: icon),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                // "${state.enrollCourses[index].courseName} (${state.enrollCourses[index].subCourseName})",
                style: context.textTheme.titleMedium!.copyWith(
                    // color: context.colorScheme.primary,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                subtitle,
                // state.enrollCourses[index].parentName,
                style: context.textTheme.titleMedium!.copyWith(
                  color: context.colorScheme.secondary,
                ),
                maxLines: 1,
              ),
              if (third != null) ...[
                const SizedBox(
                  height: 6,
                ),
                Text(
                  third!,
                  // state.enrollCourses[index].parentName,
                  style: context.textTheme.titleMedium!.copyWith(
                    color: context.colorScheme.tertiary
                  ),
                  maxLines: 1,
                ),

              ]
            ],
          )
        ],
      ),
    );
  }
}
