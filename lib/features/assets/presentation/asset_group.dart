import 'package:flutter_study/domain/entities/asset.dart';

final class AssetGroup {
  final List<Asset> items;
  final double totalValue;
  final double weightedChangeSum;
  final String label;

  AssetGroup({
    required this.items,
    required this.totalValue,
    required this.weightedChangeSum,
    required this.label,
  });

  double get changePercent =>
      totalValue == 0 ? 0.0 : weightedChangeSum / totalValue;
}
