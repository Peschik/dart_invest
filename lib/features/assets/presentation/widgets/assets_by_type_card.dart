import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/format/format_signed_percent.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/uikit/avatar.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/features/assets/presentation/asset_group.dart';

final class AssetsByTypeCard extends StatelessWidget {
  const AssetsByTypeCard({super.key, required this.assetGroup});

  final AssetGroup assetGroup;

  final baseFontFize = 12.0;

  final smallFontFize = 10.0;

  @override
  Widget build(BuildContext context) {
    final count = assetGroup.items.length;
    return AppSectionCard(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text(assetGroup.label)),
              Text(formatMoney(assetGroup.totalValue)),
              const SizedBox(width: 8),
              Text(
                formatSignedPercent(assetGroup.changePercent),
                style: TextStyle(
                  color: assetGroup.changePercent >= 0
                      ? context.colors.profit
                      : context.colors.loss,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: count,
            itemBuilder: (context, index) {
              final asset = assetGroup.items[index];
              final share = (asset.value / assetGroup.totalValue * 100)
                  .toStringAsFixed(2);

              return Column(
                spacing: 12,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Avatar(
                              name: asset.name,
                              fallbackColor: asset.color,
                              imageUrl: asset.image,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              spacing: 2,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  asset.name,
                                  style: TextStyle(fontSize: baseFontFize),
                                ),

                                Text(
                                  '$share %',
                                  style: TextStyle(fontSize: smallFontFize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Column(
                        spacing: 2,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            formatMoney(asset.value),
                            style: TextStyle(fontSize: baseFontFize),
                          ),

                          Text(
                            formatSignedPercent(asset.changePercent),
                            style: TextStyle(
                              fontSize: smallFontFize,
                              color: asset.changePercent < 0
                                  ? context.colors.loss
                                  : context.colors.profit,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (count - 1 != index) const SizedBox(height: 8),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
