import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../domain/entities/courses/sub_course.dart';

class SelectSubCourseList extends HookWidget {
  final SubCourse? initialValue;
  final void Function(SubCourse) onChange;
  final List<SubCourse> subCoursesList;
  final String? errorMsg;
  final String label;

  const SelectSubCourseList(
      {this.initialValue,
      required this.onChange,
      required this.subCoursesList,
      this.errorMsg,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    final selectedSubCourse = useState<SubCourse?>(initialValue);
    useEffect(() {
      selectedSubCourse.value = initialValue;
      return () {};
    }, [initialValue]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(
                  color: errorMsg == null
                      ? context.colorScheme.onBackground
                      : context.colorScheme.error,
                  width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          child: DropdownButton<SubCourse>(
              enableFeedback: false,
              style: context.textTheme.labelLarge!.copyWith(
                  color: context.colorScheme.onBackground,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5),
              hint: Text(label),
              value: selectedSubCourse.value,
              underline: Container(),
              isExpanded: true,
              items: subCoursesList.map((e) {
                return DropdownMenuItem(
                  onTap: () {},
                  value: e,
                  child: Text(e.name),
                );
              }).toList(),
              onChanged: (value) {
                selectedSubCourse.value = value;
                onChange(selectedSubCourse.value!);
              }),
        ),
        Visibility(
            visible: errorMsg != null,
            child: errorMsg != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          errorMsg!,
                          style: context.textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: context.colorScheme.error),
                          textAlign: TextAlign.end,
                          maxLines: 2,
                        )),
                  )
                : const SizedBox())
      ],
    );
  }
}
