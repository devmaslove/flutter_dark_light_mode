import 'package:flutter/material.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color? background;
  final Color? primary;
  final Color? secondary;

  const ThemeColors({
    required this.background,
    required this.primary,
    required this.secondary,
  });

  @override
  ThemeColors copyWith({
    Color? background,
    Color? primary,
    Color? secondary,
  }) {
    return ThemeColors(
      background: background ?? this.background,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  ThemeColors lerp(ThemeColors? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      background: Color.lerp(background, other.background, t),
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
    );
  }

  static ThemeColors of(BuildContext context) {
    return Theme.of(context).extension<ThemeColors>()!;
  }

  factory ThemeColors.light() => ThemeColors(
    background: Colors.grey.shade400,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
  );

  factory ThemeColors.dark() => ThemeColors(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
  );
}

extension BuildContextAppColors on BuildContext {
  ThemeColors get themeColors => Theme.of(this).extension<ThemeColors>()!;
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.grey.shade400,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  extensions: [
    ThemeColors.light(),
  ],
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.grey.shade900,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  extensions: [
    ThemeColors.dark(),
  ],
);
