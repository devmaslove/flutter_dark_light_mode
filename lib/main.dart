import 'package:dark_light_mode/home_page.dart';
import 'package:dark_light_mode/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.system;

  void toggleTheme() {
    setState(() {
      switch (currentThemeMode) {
        case ThemeMode.system:
          currentThemeMode = ThemeMode.light;
          break;
        case ThemeMode.light:
          currentThemeMode = ThemeMode.dark;
          break;
        default:
          currentThemeMode = ThemeMode.system;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentThemeMode,
      home: HomePage(
        onToggleThemeMode: toggleTheme,
        themeMode: currentThemeMode.name,
      ),
    );
  }
}
