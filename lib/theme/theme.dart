import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color? background;
  final Color? primary;
  final Color? secondary;

  const AppColors({
    required this.background,
    required this.primary,
    required this.secondary,
  });

  @override
  AppColors copyWith({
    Color? background,
    Color? primary,
    Color? secondary,
  }) {
    return AppColors(
      background: background ?? this.background,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      background: Color.lerp(background, other.background, t),
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
    );
  }

  factory AppColors.light() => AppColors(
    background: Colors.grey.shade400,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
  );

  factory AppColors.dark() => AppColors(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
  );
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.grey.shade400,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  extensions: [
    AppColors.light(),
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
    AppColors.dark(),
  ],
);
