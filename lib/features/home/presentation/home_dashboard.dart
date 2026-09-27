import 'package:flutter_study/domain/entities/account.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/entities/goal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dashboard.freezed.dart';

@freezed
abstract class PortfolioSlice with _$PortfolioSlice {
  const factory PortfolioSlice({
    required AssetType type,
    required double value,
    required double share, // 0..1
  }) = _PortfolioSlice;
}

@freezed
abstract class HomeDashboard with _$HomeDashboard {
  const factory HomeDashboard({
    required double capital,
    required double capitalChangePercent,
    required Goal? primaryGoal,
    required List<PortfolioSlice> portfolio,
    required List<Account> accounts,
  }) = _HomeDashboard;
}
