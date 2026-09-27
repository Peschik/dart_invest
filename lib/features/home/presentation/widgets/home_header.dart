import 'package:flutter/material.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

final class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.onThemeModeToggle});

  final VoidCallback onThemeModeToggle;


  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(l10n.greetings),
        IconButton(
          onPressed: onThemeModeToggle,
          icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
        ),
      ],
    );
  }
}
