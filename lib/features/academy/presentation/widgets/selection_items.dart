import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class SelectionItems extends StatefulWidget {
  final String label;
  final List<String> items;
  final void Function(List<String>) onTap;
  final List<String> selectedList;
  final String? hasError;

  const SelectionItems(
      {required this.label,
      required this.items,
      required this.onTap,
      required this.selectedList,
      required this.hasError,
      super.key});

  @override
  State<SelectionItems> createState() => _SelectionItemsState();
}

class _SelectionItemsState extends State<SelectionItems> {
  List<String> _selected = [];
  final _padding = 8.0;

  @override
  void initState() {
    super.initState();
    _selected = widget.selectedList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Wrap(
            spacing: _padding,
            runSpacing: _padding,
            children: widget.items.map((e) {
              var contains = _selected.contains(e);
              return GestureDetector(
                onTap: () {
                  List<String> newList = [];
                  if (contains) {
                    newList = _selected.where((element) => element != e).toList();
                  } else {
                    newList = List<String>.of(_selected)..add(e);
                  }
                  setState(() {
                    _selected = newList;
                    widget.onTap(_selected);
                  });
                },
                child: Container(
                    // margin: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                        color: contains
                            ? context.colorScheme.primaryContainer
                            : null,
                        borderRadius: BorderRadius.circular(24),
                        border: contains
                            ? null
                            : Border.fromBorderSide(BorderSide(
                                color: context.colorScheme.primaryContainer,
                                style: BorderStyle.solid,
                                width: 1))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16.0),
                      child: Text(
                        e,
                        style: context.textTheme.titleMedium,
                      ),
                    )),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 6,
          ),
          widget.hasError != null
              ? Text(
                  widget.hasError!,
                  style: context.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: context.colorScheme.error),
                  textAlign: TextAlign.end,
                  maxLines: 2,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
