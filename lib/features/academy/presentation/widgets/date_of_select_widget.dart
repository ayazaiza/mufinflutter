import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DateOfBirthSelect extends HookWidget {
  final String label;
  final void Function(String,String) onChange;
  final String? hasError;
  final String initialValue;
  final currentYear = DateTime.now().year;

  DateOfBirthSelect(
      {required this.label,
      required this.onChange,
      required this.hasError,
      required this.initialValue,
      super.key});

  @override
  Widget build(BuildContext context) {
    final dateTime = useState(DateTime.now());
    final dob = useState(initialValue);
    Future<void> showCusDatePicker() async {
      final DateTime? date = await showDatePicker(
          context: context,
          initialDate: dateTime.value,
          firstDate: DateTime(1915),
          lastDate: DateTime(2115));
      if (date != null && date != dateTime.value) {
        dateTime.value = date;
        dob.value =
            "${dateTime.value.day}/${dateTime.value.month}/${dateTime.value.year}";
        onChange(dob.value,(currentYear - date.year).toString());

      }
    }

    // useEffect(() {
    //   dob.value =
    //       "${dateTime.value.day}/${dateTime.value.month}/${dateTime.value.year}";
    //   onChange(dob.value);
    //   return null;
    // }, [dateTime.value]);
    return GestureDetector(
      onTap: () {
        showCusDatePicker();
      },
      child: SizedBox(
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: context.textTheme.titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: hasError == null
                            ? context.colorScheme.onSurface
                            : context.colorScheme.error,
                        width: 1.5),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(dob.value.isNotEmpty ? dob.value : label,
                          style: context.textTheme.labelLarge!.copyWith(
                              color: dob.value.isNotEmpty
                                  ? context.colorScheme.onSurface
                                  : Colors.grey,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5)),
                    ),
                    IconButton(
                        onPressed: () {
                          showCusDatePicker();
                        },
                        icon: const Icon(Icons.calendar_month))
                  ],
                )),
            const SizedBox(
              height: 6,
            ),
            Visibility(
                visible: hasError != null,
                child: hasError != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              hasError!,
                              style: context.textTheme.bodySmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: context.colorScheme.error),
                              textAlign: TextAlign.end,
                              maxLines: 2,
                            )),
                      )
                    : const SizedBox())
          ],
        ),
      ),
    );
  }
}
