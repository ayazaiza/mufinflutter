import 'package:academy/core/constants/app_strings.dart';
import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomDropDownList extends StatefulWidget {
  final String? selectedCountry;
  final void Function(String) onChange;
  final List<String> countryList;
  final String? errorMsg;

  const CustomDropDownList(
      {this.selectedCountry,
      required this.onChange,
      required this.countryList,
      this.errorMsg,
      super.key});

  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  String? _selectedCountry;

  @override
  void initState() {
    super.initState();
    _selectedCountry = widget.selectedCountry;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.country,
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
                  color: widget.errorMsg == null
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
              hint: const Text(AppStrings.country),
              value: _selectedCountry,
              underline: Container(),
              isExpanded: true,
              items: widget.countryList.map((e) {
                return DropdownMenuItem<String>(
                  onTap: () {},
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCountry = value;
                  widget.onChange(_selectedCountry!);
                });
              }),
        ),
        Visibility(
            visible: widget.errorMsg != null,
            child: widget.errorMsg != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          widget.errorMsg!,
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
