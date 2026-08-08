import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';

abstract final class AppTheme {
  static ThemeData get light => _build(AppColors.light, Brightness.light);

  static ThemeData get dark => _build(AppColors.dark, Brightness.dark);

  static ThemeData _build(AppColors colors, Brightness brightness) {
    final base = ColorScheme.fromSeed(
      seedColor: colors.primary,
      brightness: brightness,
    );

    final scheme = base.copyWith(
      surface: colors.surface,
      onSurface: colors.onSurface,
      primary: colors.primary,
      error: colors.loss,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: colors.background,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
        foregroundColor: colors.onSurface,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: colors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
      ),
      extensions: <ThemeExtension<dynamic>>[colors],
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: colors.onSurface,
        selectedLabelStyle: TextStyle(
          color: colors.primary,
          fontSize: 12,
        ),
        unselectedLabelStyle: TextStyle(
          color: colors.onSurface,
          fontSize: 12,
        ),
        selectedItemColor: colors.primary,
      )
    );
  }
}
