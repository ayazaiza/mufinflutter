import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ThemeData get themeData => Theme.of(this);

  double get height => mediaQuery.size.height;

  double get width => mediaQuery.size.width;

  ColorScheme get colorScheme => themeData.colorScheme;

  TextTheme get textTheme => themeData.textTheme;

  IconThemeData? get iconTheme => themeData.appBarTheme.iconTheme;

  TextStyle? get title => themeData.textTheme.titleLarge;

  TextStyle? get subTitle => themeData.textTheme.titleMedium;
}
