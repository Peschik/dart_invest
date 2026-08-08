import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/app/theme/theme_mode_provider.dart';
import 'package:flutter_study/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class _Header extends ConsumerWidget {
  const _Header();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(l10n.greetings),
        IconButton(
          onPressed: () => ref.read(themeModeProvider.notifier).toggle(),
          icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
        ),
      ],
    );
  }
}

final class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              _Header(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: context.colors.surface,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),

                  child: ElevatedButton(
                    onPressed: () {
                      context.push('/goals/1');
                    },
                    child: Text('К цели номер 1'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
