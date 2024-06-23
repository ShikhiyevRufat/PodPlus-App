import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get onsecondaryColor => Theme.of(this).colorScheme.onSecondary;
  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;
  TextStyle? get textColor => Theme.of(this).textTheme.bodyLarge;
  WidgetStateProperty<Color?>? get thumbColor => Theme.of(this).switchTheme.thumbColor;
  WidgetStateProperty<Color?>? get trackColor => Theme.of(this).switchTheme.trackColor;
  WidgetStateProperty<Color?>? get trackOutlineColor => Theme.of(this).switchTheme.trackOutlineColor;
}

