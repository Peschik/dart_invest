import 'package:flutter/material.dart';

@immutable
final class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.surface,
    required this.onSurface,
    required this.primary,
    required this.profit, // green
    required this.loss, // red
    required this.metal, // gold
    required this.border,
  });

  final Color background;
  final Color surface;
  final Color onSurface;
  final Color primary;
  final Color profit; // green
  final Color loss; // red
  final Color metal; // gold
  final Color border;

  static const light = AppColors(
    background: Color(0xFFF5F6F8),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1A1D23),
    primary: Color(0xFF3B82F6),
    profit: Color(0xFF22C55E),
    loss: Color(0xFFEF4444),
    metal: Color(0xFFD4A017),
    border: Color(0xFFE5E7EB),
  );

  static const dark = AppColors(
    background: Color(0xFF0D1117), // navy из плана
    surface: Color(0xFF161B22), // карточка чуть светлее
    onSurface: Color(0xFFE6EDF3),
    primary: Color(0xFF3B82F6),
    profit: Color(0xFF3FB950),
    loss: Color(0xFFF85149),
    metal: Color(0xFFE3B341),
    border: Color(0xFF30363D),
  );

  @override
  AppColors copyWith({
    Color? background,
    Color? surface,
    Color? onSurface,
    Color? primary,
    Color? profit,
    Color? loss,
    Color? metal,
    Color? border,
  }) {
    return AppColors(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      primary: primary ?? this.primary,
      profit: profit ?? this.profit,
      loss: loss ?? this.loss,
      metal: metal ?? this.metal,
      border: border ?? this.border,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      profit: Color.lerp(profit, other.profit, t)!,
      loss: Color.lerp(loss, other.loss, t)!,
      metal: Color.lerp(metal, other.metal, t)!,
      border: Color.lerp(border, other.border, t)!,
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
