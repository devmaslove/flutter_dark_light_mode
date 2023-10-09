import 'package:dark_light_mode/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onToggleThemeMode;
  final String themeMode;

  const HomePage({
    super.key,
    required this.onToggleThemeMode,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.of(context).background,
      body: Center(
        child: MyBox(
          color: context.themeColors.secondary,
          child: MyButton(
            color: ThemeColors.of(context).secondary,
            text: themeMode,
            onTap: onToggleThemeMode,
          ),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const MyBox({
    super.key,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(50),
      child: child,
    );
  }
}

class MyButton extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;
  final String text;

  const MyButton({
    super.key,
    this.color,
    this.onTap,
    this.text = 'Tap',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(text.toUpperCase()),
        ),
      ),
    );
  }
}
