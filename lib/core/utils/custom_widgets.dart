import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/app_strings.dart';

class CustomWidgets {
  static EdgeInsets screenPadding =
      const EdgeInsets.symmetric(vertical: 16, horizontal: 24);

  static spacerHeight({double defaultHeight = 12}) {
    return SizedBox(
      height: defaultHeight,
    );
  }

  static Widget spacerWidth({double defaultWidth = 10}) {
    return SizedBox(
      width: defaultWidth,
    );
  }

  static void ignoreTryCatch(VoidCallback voidCallback) {
    try {
      voidCallback();
    } catch (_) {}
  }

  static void showSnack(
      {required BuildContext context,
      required String message,
      Color? background,
      Function(SnackBarClosedReason)? closed,
      int duration = 500}) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          duration: Duration(milliseconds: duration),
          content: Center(
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onError,
                  fontWeight: FontWeight.w400),
              maxLines: 2,
            ),
          ),
          backgroundColor: background ?? Theme.of(context).colorScheme.primary,
          behavior: SnackBarBehavior.floating,
        ))
        .closed
        .then((value) {
      if (closed != null) {
        closed(value);
      }
    });
  }

  static Widget customOutlinedTextFormField(
      {TextEditingController? controller,
      void Function(String)? onChanged,
      void Function(String?)? onSaved,
      String? Function(String?)? validator,
      required String hintText,
      double borderRadius = 16,
      bool autocorrect = false,
      TextInputAction textInputAction = TextInputAction.next,
      TextInputType keyboardType = TextInputType.text,
      bool obscureText = false,
      Widget? prefixIcon,
      AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction,
      Widget? suffixIcon,
      required BuildContext context,
      int maxLines = 1}) {
    return TextFormField(
        maxLines: maxLines,
        controller: controller,
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
                borderSide: BorderSide.none),
            labelText: hintText,
            fillColor: Colors.grey.shade100,
            alignLabelWithHint: true)
        // Colors.grey.shade100 fillColor: ThemeData().appBarTheme.backgroundColor),
        );
  }

  static Widget customTextFieldWithError(
      {TextEditingController? controller,
      void Function(String)? onChanged,
      void Function(String?)? onSaved,
      String? Function(String?)? validator,
      required String hintText,
      double borderRadius = 16,
      bool autocorrect = false,
      TextInputAction textInputAction = TextInputAction.next,
      TextInputType keyboardType = TextInputType.text,
      bool obscureText = false,
      Widget? prefixIcon,
      AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction,
      Widget? suffixIcon,
      required BuildContext context,
      int maxLines = 1,
      String? errorMsg,
      String? initialValue}) {
    return Column(
      children: [
        TextFormField(
            initialValue: initialValue,
            maxLines: maxLines,
            controller: controller,
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
                labelText: hintText,
                fillColor: Colors.grey.shade200,
                // fillColor: errorMsg == null ? Colors.grey.shade100 : context.colorScheme.errorContainer,
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadius)),
                    borderSide: BorderSide.none
                    // borderSide: errorMsg == null
                    //     ? BorderSide.none
                    //     : BorderSide(
                    //     color: context.colorScheme.error,
                    //     style: BorderStyle.solid,
                    //     width: 2
                    // )
                    ),
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                  borderSide: errorMsg == null
                      ? BorderSide.none
                      : BorderSide(
                          color: context.colorScheme.error,
                          style: BorderStyle.solid,
                          width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                  borderSide: errorMsg == null
                      ? BorderSide.none
                      : BorderSide(
                          color: context.colorScheme.error,
                          style: BorderStyle.solid,
                          width: 2),
                ))
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
                          errorMsg,
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

  static Widget customNameSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: customOutlinedTextFormField(
              autocorrect: false,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              hintText: "First Name",
              context: context),
        ),
        spacerWidth(),
        Expanded(
          child: customOutlinedTextFormField(
              autocorrect: false,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              hintText: "Last Name",
              context: context),
        ),
      ],
    );
  }

  static Widget customCheckBox(
      {bool isChecked = false,
      required void Function(bool?)? onChanged,
      Function()? onTermsTap,
      Function()? onPrivacyTap,
      Color? color,
      TextStyle? style}) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Checkbox(value: isChecked, onChanged: onChanged),
        ),
        spacerWidth(),
        Expanded(
          flex: 9,
          child: RichText(
            text: TextSpan(
              text: 'I agree to the ',
              style: style,
              children: <TextSpan>[
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                  text: AppStrings.terms,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: color,
                      decoration: TextDecoration.underline),
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
                    text: AppStrings.privacyPolicy,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget footerWidget(
      {double? deviceWidth,
      TextStyle? style,
      Color? color,
      Function()? onTap,
      required String textOne,
      required String textTwo,
      required BuildContext context}) {
    return SizedBox(
      width: deviceWidth,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(text: "$textOne ", style: style, children: [
          TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: textTwo,
              style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                  decoration: TextDecoration.underline))
        ]),
      ),
    );
  }

  static Widget customButton(
      {required void Function()? onPressed,
      double? minWidth,
      Color? color,
      required String actionText,
      required BuildContext context,
      TextStyle? style,
      ShapeBorder? shape,
      EdgeInsetsGeometry padding = const EdgeInsets.all(12),
      double elevation = 12}) {
    ButtonStyle buttonStyle = FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: padding,
        elevation: onPressed != null ? elevation : 0);

    return SizedBox(
        width: double.infinity,
        child: FilledButton(
            onPressed: onPressed, style: buttonStyle, child: Text(actionText)));
  }

  static Widget customOptions({
    required String optionText,
    required BuildContext context,
  }) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 2,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
            ),
            Expanded(
              child: Text(
                optionText,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Container(
                height: 2,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
            )
          ],
        ));
  }

  static Widget customButtonWithIcon(
      {required BuildContext context,
      required String assetImage,
      required String label,
      required Function()? onTap}) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: context.themeData.canvasColor,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    assetImage,
                    height: 24,
                    width: 24,
                  ),
                ),
                Expanded(
                    flex: 9,
                    child: Text(
                      label.toUpperCase(),
                      style: context.textTheme.bodyLarge!.copyWith(
                          color: context.colorScheme.onBackground,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget customLoaderButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: context.colorScheme.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // if(state.isLoading) ...[
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
                CustomWidgets.spacerWidth(defaultWidth: 20),
                // ],
                Text(
                  "Create Account".toUpperCase(),
                  style: context.textTheme.titleMedium!.copyWith(
                      color: context.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*onPressed != null
        ? MaterialButton(
            disabledColor: context.colorScheme.surfaceVariant,
            disabledTextColor: context.colorScheme.primary,
            disabledElevation: 2.0,
            textColor: context.colorScheme.onPrimary,
            textTheme: ButtonTextTheme.normal,
            padding: padding,
            enableFeedback: false,
            shape: shape ??
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            minWidth: minWidth ?? context.width,
            color: color ?? context.colorScheme.primary,
            onPressed: onPressed,
            elevation: elevation,
            child: Text(
              actionText,
              */

/*style: style ??
            context.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600),*/ /*
            ),
          )
        : */
