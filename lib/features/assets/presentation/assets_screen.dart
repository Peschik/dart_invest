import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/core/utils/get_asset_type_label.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/features/assets/presentation/asset_group.dart';
import 'package:flutter_study/features/assets/presentation/assets_providers.dart';
import 'package:flutter_study/features/assets/presentation/widgets/asset_type_filter_segmented.dart';
import 'package:flutter_study/features/assets/presentation/widgets/assets_by_type_card.dart';
import 'package:flutter_study/features/assets/presentation/widgets/total_cost_card.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

final class AssetsScreen extends ConsumerWidget {
  const AssetsScreen({super.key});

  final spacing = 12.0;

  Map<AssetType, AssetGroup> _foldAssetsInMap(
    List<Asset> assets,
    AppLocalizations l10n,
  ) {
    return assets.fold(<AssetType, AssetGroup>{}, (sum, asset) {
      final assetWeightedChange = asset.value * asset.changePercent;

      sum.update(
        asset.type,

        (currentGroup) {
          final total = currentGroup.totalValue + asset.value;
          currentGroup.items.add(asset);

          return AssetGroup(
            items: currentGroup.items,
            totalValue: total,
            weightedChangeSum:
                currentGroup.weightedChangeSum + assetWeightedChange,
            label: currentGroup.label,
          );
        },
        ifAbsent: () => AssetGroup(
          items: [asset],
          totalValue: asset.value,
          weightedChangeSum: assetWeightedChange,
          label: getAssetTypeLabel(asset.type, l10n),
        ),
      );

      return sum;
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final asyncAssets = ref.watch(assetsProvider);
    final filter = ref.watch(assetsFilterProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navAssets)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: SafeArea(
          child: Column(
            spacing: 12,
            children: [
              AssetTypeFilterSegmented(
                key: key,
                filter: filter,
                onSelectionChanged: (value) {
                  ref.read(assetsFilterProvider.notifier).state = value;
                },
              ),
              Expanded(
                child: asyncAssets.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, _) =>
                      Center(child: Text('Error while getting assets: $error')),
                  data: (assets) {
                    final assetsMap = _foldAssetsInMap(assets, l10n);
                    return ListView(
                      children: [
                        TotalCostCard(key: super.key, assets: assets),

                        if (assetsMap.containsKey(AssetType.stock)) ...[
                          SizedBox(height: spacing),
                          AssetsByTypeCard(
                            assetGroup: assetsMap[AssetType.stock]!,
                          ),
                        ],

                        if (assetsMap.containsKey(AssetType.metal)) ...[
                          SizedBox(height: spacing),
                          AssetsByTypeCard(
                            assetGroup: assetsMap[AssetType.metal]!,
                          ),
                        ],

                        if (assetsMap.containsKey(
                          AssetType.commercialEstate,
                        )) ...[
                          SizedBox(height: spacing),
                          AssetsByTypeCard(
                            assetGroup: assetsMap[AssetType.commercialEstate]!,
                          ),
                        ],

                        if (assetsMap.containsKey(AssetType.currency)) ...[
                          SizedBox(height: spacing),
                          AssetsByTypeCard(
                            assetGroup: assetsMap[AssetType.currency]!,
                          ),
                        ],
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
