import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomOutlinedTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final String hintText;
  final double borderRadius;
  final bool autocorrect;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final AutovalidateMode autoValidateMode;
  final Widget? suffixIcon;
  final int maxLines;
  final bool enabled;
  final String? errorMsg;
  final String? initialValue;
  final String? exampleHint;
  final bool readOnly;

  const CustomOutlinedTextFormField({this.controller,
    this.onChanged,
    this.exampleHint,
    this.onSaved,
    this.validator,
    required this.hintText,
    this.borderRadius = 8,
    this.enabled = true,
    this.autocorrect = false,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.suffixIcon,
    this.maxLines = 1,
    this.readOnly = false,
    this.errorMsg,
    this.initialValue,
    this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: context.textTheme.titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
            onTap: onTap,
            initialValue: initialValue,

            enabled: enabled,
            maxLines: maxLines,
            readOnly: readOnly,
            // controller: controller..text = initialValue ?? "",
            onChanged: onChanged,
            onSaved: onSaved,
            validator: validator,
            keyboardType: keyboardType,
            autocorrect: autocorrect,
            textInputAction: textInputAction,
            obscureText: obscureText,
            autovalidateMode: autoValidateMode,
            decoration: InputDecoration(
                labelStyle: context.textTheme.labelLarge!.copyWith(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5),
                errorStyle: context.textTheme.labelMedium!.copyWith(
                  color: context.colorScheme.error,
                  fontWeight: FontWeight.bold,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                  /*borderSide: BorderSide.none*/
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                  borderSide: errorMsg == null
                      ? const BorderSide()
                      : BorderSide(
                      color: context.colorScheme.error,
                      style: BorderStyle.solid,
                      width: 2),
                ),
                labelText: exampleHint ?? hintText,
                fillColor: enabled ? context.colorScheme.surface : null,
                // fillColor: Colors.grey.shade200,
                alignLabelWithHint: true)
          // Colors.grey.shade100 fillColor: ThemeData().appBarTheme.backgroundColor),
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
                : Container())
      ],
    );
  }
}
