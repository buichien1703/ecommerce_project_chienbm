import 'package:flutter/material.dart';

extension ThemeGetter on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get backGroundCardColor => Theme.of(this).colorScheme.primaryContainer;

  Color radioSelectedColor([bool isSelected = false]) => isSelected
      ? Theme.of(this).colorScheme.primary
      : Theme.of(this).colorScheme.onBackground;

  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;
}
