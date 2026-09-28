import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/features/goal/presentation/goals_providers.dart';

final class GoalScreen extends ConsumerWidget {
  const GoalScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goalAsync = ref.watch(goalProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: goalAsync.when(
          data: (goal) => Text(goal?.title ?? id),
          loading: () => const Text(''),
          error: (_, __) => const Text(''),
        ),
      ),
      body: goalAsync.when(
        data: (goal) {
          if (goal == null) return const Center(child: Text('Goal not found'));

          return Padding(
            padding: const EdgeInsets.all(16),
            child: AppSectionCard(
              child: Column(
                children: [
                  Text('${(goal.progress * 100).round()}%'),
                  SizedBox(
                    width: 96,
                    height: 96,
                    child: CircularProgressIndicator(value: goal.progress),
                  ),
                  Text(formatMoney(goal.current)),
                  Text(formatMoney(goal.remaining)),
                  Text(formatMoney(goal.target)),
                ],
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
