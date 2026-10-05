import 'package:flutter/material.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

final class TotalCostCard extends StatelessWidget {
  const TotalCostCard({required super.key, required this.assets});

  final List<Asset> assets;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final total = assets.fold<double>(0, (sum, a) => sum + a.value);

    final totalChangePercent = total == 0
        ? 0.0
        : assets.fold<double>(
                0,
                (sum, asset) => sum + (asset.value * asset.changePercent),
              ) /
              total;

    final changeAmount = total * (totalChangePercent / 100);

    String sign = '';
    Color textColor = context.colors.profit;

    if (totalChangePercent > 0) {
      sign = '+';
    } else if (totalChangePercent < 0) {
      textColor = context.colors.loss;
    }

    final changeAmountAndPercent =
        '$sign${formatMoney(changeAmount)} (${totalChangePercent.toStringAsFixed(2)}%)';

    return AppSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.assetsTotalCost,
            style: TextStyle(fontSize: 12, color: context.colors.onSurface),
          ),
          Text(
            formatMoney(total),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(changeAmountAndPercent, style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}
