import 'package:flutter/material.dart';

final lightScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: Colors.blue,
  primary: Colors.blue[600],
  secondary: Colors.blue[700],
);

final darkScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.blue,
  primary: Colors.blue[600],
  secondary: Colors.blue[700],
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
