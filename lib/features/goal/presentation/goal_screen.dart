import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/features/goal/presentation/goals_providers.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

final class GoalScreen extends ConsumerWidget {
  const GoalScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final goalAsync = ref.watch(goalProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: goalAsync.when(
          data: (goal) => Text(goal?.title ?? id),
          loading: () => const Text(''),
          error: (error, _) => Text(l10n.goalLoadError),
        ),
      ),
      body: goalAsync.when(
        data: (goal) {
          if (goal == null) return Center(child: Text(l10n.goalNotFound));

          return Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: AppSectionCard(
                child: Column(
                  spacing: 8,
                  children: [
                    SizedBox(
                      width: 128,
                      height: 128,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox.expand(
                            child: CircularProgressIndicator(
                              value: goal.progress,
                              strokeWidth: 8,
                              backgroundColor: context.colors.onSurface
                                  .withValues(alpha: 0.1),
                            ),
                          ),
                          Text(
                            '${(goal.progress * 100).round()}%',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('${l10n.goalSaved}: ${formatMoney(goal.current)}'),
                    Text('${l10n.goalLeft}: ${formatMoney(goal.remaining)}'),
                    Text('${l10n.goalTarget}: ${formatMoney(goal.target)}'),
                  ],
                ),
              ),
            ),
          );
        },
        error: (error, _) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
