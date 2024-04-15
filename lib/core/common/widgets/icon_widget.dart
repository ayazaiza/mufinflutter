import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? _onPressed;
  final Color? _color;
  final IconData? _iconData;
  final String? _semanticLabel;

  const CustomIconButton(
      {required void Function()? onPressed,
      Color? color,
      IconData? iconData,
      String? semanticLabel,
      super.key})
      : _onPressed = onPressed,
        _color = color,
        _iconData = iconData,
        _semanticLabel = semanticLabel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: _onPressed,
        icon: Icon(
          _iconData,
          color: _color ?? context.colorScheme.primary,
          semanticLabel: _semanticLabel,
        ));
  }
}
