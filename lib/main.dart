import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

import 'theming.dart';
import 'screens/home_screen.dart';

final defaultSettings = {
  "colorScheme": "System",
};

void main() async {
//  final prefsInstance = await SharedPreferences.getInstance();
//  var effectiveSettings = {};
    var effectiveSettings = defaultSettings; // temporary for having no real settings

//  defaultSettings.forEach((key, value) {
//    // iter default settings
//    effectiveSettings[key] = prefsInstance.get("settings_$key") ??
//        value; // get-set key or its default value
//  });

//  MyApp app = MyApp(settings: effectiveSettings, prefsInstance: prefsInstance);
    MyApp app = MyApp(settings: effectiveSettings);

  runApp(app);
}

class MyApp extends StatefulWidget {
  final Map<dynamic, dynamic> settings;
//  final SharedPreferences prefsInstance;

  get constructor => MyApp.new;

//  void updateSettingString(String key, String value) {
//    settings[key] = value;
//    prefsInstance.setString("settings_$key", value);
//  }

//  void updateSettingBool(String key, bool value) {
//    settings[key] = value;
//    prefsInstance.setBool("settings_$key", value);
//  }

//  void updateSettingInt(String key, int value) {
//    settings[key] = value;
//    prefsInstance.setInt("settings_$key", value);
//  }

//  void updateSettingDouble(String key, double value) {
//    settings[key] = value;
//    prefsInstance.setDouble("settings_$key", value);
//  }

//  void updateSettingStringList(String key, List<String> value) {
//    settings[key] = value;
//    prefsInstance.setStringList("settings_$key", value);
//  }

//  const MyApp({super.key, required this.settings, required this.prefsInstance});
  const MyApp({super.key, required this.settings});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: effectiveLightTheme,
      darkTheme: effectiveDarkTheme,
      themeMode: themeModeTable[widget.settings["colorScheme"]],
      home: HomeScreen(),
    );
  }
}
