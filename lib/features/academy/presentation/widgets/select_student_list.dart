import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/student/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelectStudentList extends HookWidget {
  final Student? initialValue;
  final void Function(Student) onChange;
  final List<Student> studentsList;
  final String? errorMsg;
  final String label;
  final bool enabled;

  const SelectStudentList(
      {this.initialValue,
      required this.onChange,
      required this.studentsList,
      this.errorMsg,
      required this.label,
      required this.enabled,
      super.key});

  @override
  Widget build(BuildContext context) {

    final selectedStudent = useState<Student?>(null);
    useEffect(() {
      selectedStudent.value = initialValue;
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
                      ? context.colorScheme.onSurface
                      : context.colorScheme.error,
                  width: 1.5),
              borderRadius: BorderRadius.circular(8)),
          child: DropdownButton(
              enableFeedback: false,
              style: context.textTheme.labelLarge!.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5),
              hint: Text(label),
              value: selectedStudent.value,
              underline: Container(),
              isExpanded: true,
              items: studentsList.map((e) {
                return DropdownMenuItem<Student>(
                  onTap: () {},
                  value: e,
                  child: Text(e.name),
                );
              }).toList(),
              onChanged: enabled
                  ? (value) {
                      selectedStudent.value = value as Student?;
                      onChange(selectedStudent.value!);
                    }
                  : null),
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

// Expanded(
//   child: Text(
//     "Select country",
//     style: context.textTheme.labelLarge!.copyWith(
//         color: Colors.grey.shade500,
//         fontWeight: FontWeight.w500,
//         letterSpacing: 1.5),
//   ),
// ),
