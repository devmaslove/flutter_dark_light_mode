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
  ThemeMode currentTheme = ThemeMode.system;

  void toggleTheme() {
    setState(() {
      switch (currentTheme) {
        case ThemeMode.system:
          currentTheme = ThemeMode.light;
          break;
        case ThemeMode.light:
          currentTheme = ThemeMode.dark;
          break;
        default:
          currentTheme = ThemeMode.system;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentTheme,
      home: HomePage(
        onToggleThemeMode: toggleTheme,
        themeMode: currentTheme.name,
      ),
    );
  }
}
