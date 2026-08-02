import 'package:flutter/material.dart';
import 'package:flutter_study/app/router/app_router.dart';
import 'package:flutter_study/app/theme/app_theme.dart';
import 'package:flutter_study/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/app/theme/theme_mode_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'Personal Finance Manager',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      routerConfig: AppRouter.appRouter,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: const Locale('ru'),
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
