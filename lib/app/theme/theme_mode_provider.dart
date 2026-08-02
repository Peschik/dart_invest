import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/core/storage/shared_preferences_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themeModeKey = 'theme_mode';

class ThemeModeNotifier extends Notifier<ThemeMode> {
  SharedPreferences get _prefs => ref.read(sharedPreferencesProvider);

  @override
  ThemeMode build() {
    final raw = _prefs.getString(_themeModeKey);
    return _fromStorage(raw);
  }

  void setMode(ThemeMode mode) {
    state = mode;
    _prefs.setString(_themeModeKey, _toStorage(mode));
  }

  void toggle() {
    final next = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    setMode(next);
  }

  static String _toStorage(ThemeMode mode) => switch (mode) {
    ThemeMode.system => 'system',
    ThemeMode.light => 'light',
    ThemeMode.dark => 'dark',
  };

  static ThemeMode _fromStorage(String? raw) => switch (raw) {
    'light' => ThemeMode.light,
    'dark' => ThemeMode.dark,
    _ => ThemeMode.system,
  };
}

final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);
