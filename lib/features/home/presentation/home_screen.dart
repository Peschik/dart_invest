import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/app/theme/theme_mode_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_study/features/home/presentation/home_providers.dart';
import 'package:flutter_study/features/home/presentation/widgets/capital_card.dart';
import 'package:flutter_study/features/home/presentation/widgets/goal_card.dart';
import 'package:flutter_study/features/home/presentation/widgets/home_header.dart';
import 'package:flutter_study/features/home/presentation/widgets/portfolio_card.dart';

final class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(homeDashboardProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              HomeHeader(
                onThemeModeToggle: () =>
                    ref.read(themeModeProvider.notifier).toggle(),
              ),

              Expanded(
                child: dashboard.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Center(child: Text(error.toString())),
                  data: (data) => ListView(
                    children: [
                      CapitalCard(
                        capital: data.capital,
                        changePercent: data.capitalChangePercent,
                      ),
                      if (data.primaryGoal != null) ...[
                        const SizedBox(height: 8),
                        GestureDetector(
                          onTap: () =>
                              context.push('/goals/${data.primaryGoal?.id}'),
                          child: GoalCard(goal: data.primaryGoal!),
                        ),
                      ],

                      const SizedBox(height: 8),
                      PortfolioCard(portfolio: data.portfolio),
                    ],
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
