import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomDropDownList extends HookWidget {
  final String? initialValue;
  final void Function(String) onChange;
  final List<String> countryList;
  final String? errorMsg;
  final String label;

  const CustomDropDownList(
      {this.initialValue,
      required this.onChange,
      required this.countryList,
      this.errorMsg,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCountry = useState<String?>(initialValue);
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
          child: DropdownButton(
              enableFeedback: false,
              style: context.textTheme.labelLarge!.copyWith(
                  color: context.colorScheme.onBackground,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5),
              hint: Text(label),
              value: selectedCountry.value,
              underline: Container(),
              isExpanded: true,
              items: countryList.map((e) {
                return DropdownMenuItem<String>(
                  onTap: () {},
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                selectedCountry.value = value;
                onChange(selectedCountry.value!);
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

// Expanded(
//   child: Text(
//     "Select country",
//     style: context.textTheme.labelLarge!.copyWith(
//         color: Colors.grey.shade500,
//         fontWeight: FontWeight.w500,
//         letterSpacing: 1.5),
//   ),
// ),
