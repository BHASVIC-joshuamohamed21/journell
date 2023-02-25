import 'package:flutter/material.dart';

final lightScheme = ColorScheme.light(
  primary: Colors.deepPurple,
  secondary: Colors.deepPurple.shade500,
);

final darkScheme = ColorScheme.dark(
  primary: Colors.deepPurple,
  secondary: Colors.deepPurple.shade500,
);

final calculatedLightTheme =
    ThemeData.from(colorScheme: lightScheme); // derive theme from color scheme
final calculatedDarkTheme = ThemeData.from(colorScheme: darkScheme);

final effectiveLightTheme = calculatedLightTheme.copyWith();
final effectiveDarkTheme = calculatedDarkTheme.copyWith();

const themeModeTable = {
  "System": ThemeMode.system,
  "Light": ThemeMode.light,
  "Dark": ThemeMode.dark,
};
