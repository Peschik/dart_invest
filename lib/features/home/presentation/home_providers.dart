import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/domain/entities/asset.dart';

import 'package:flutter_study/features/assets/presentation/assets_providers.dart';
import 'package:flutter_study/features/goal/presentation/goals_providers.dart';
import 'package:flutter_study/features/home/presentation/accounts_providers.dart';
import 'package:flutter_study/features/home/presentation/home_dashboard.dart';

final homeDashboardProvider = FutureProvider<HomeDashboard>((ref) async {
  final assets = await ref.watch(assetsProvider.future);
  final goals = await ref.watch(goalsProvider.future);
  final accounts = await ref.watch(accountsProvider.future);

  final capital = assets.fold<double>(0, (sum, a) => sum + a.value);

  final primaryGoal = goals.where((goal) => goal.id == '1').firstOrNull ?? goals.firstOrNull;

  final totals = <AssetType, double>{};
  for (final asset in assets) {
    totals.update(
      asset.type,
      (sum) => sum + asset.value,
      ifAbsent: () => asset.value,
    );
  }

  final portfolio = [
    for (final entry in totals.entries)
      PortfolioSlice(
        type: entry.key,
        value: entry.value,
        share: capital == 0 ? 0 : entry.value / capital,
      ),
  ];

  return HomeDashboard(
    capital: capital,
    capitalChangePercent: 0,
    primaryGoal: primaryGoal,
    accounts: accounts,
    portfolio: portfolio,
  );
});
