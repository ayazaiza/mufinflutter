import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomContainerBox<Type> extends StatelessWidget {
  final String title;

  // final Widget child;
  final Function()? viewAll;
  final List<Type> item;
  final Widget Function(int) itemWidget;
  final int itemCount;

  const CustomContainerBox(
      {super.key,
      required this.title,
      this.viewAll,
      required this.item,
      required this.itemWidget,
      required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            // color: context.colorScheme.surfaceVariant.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: context.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                if (viewAll != null) ...[
                  IconButton(
                      onPressed: viewAll,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ))
                ] else ...[
                  const SizedBox(
                    height: 42,
                  )
                ]
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: itemCount,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext itemContext, int index) {
                  return itemWidget(index);
                })
          ],
        )
        // child: child,
        );
  }
}
