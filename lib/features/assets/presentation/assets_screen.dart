import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/utils/get_asset_type_label.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/features/assets/presentation/assets_providers.dart';
import 'package:flutter_study/l10n/app_localizations.dart';
import 'package:flutter_study/app/theme/app_colors.dart';

final class _AssetTypeFilterSegmented extends StatelessWidget {
  const _AssetTypeFilterSegmented({
    required this.filter,
    required this.onSelectionChanged,
  });

  final AssetType? filter;
  final void Function(AssetType?) onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [
          ChoiceChip(
            label: Text(l10n.operationTypeAll),
            selected: filter == null,
            selectedColor: context.colors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0), // Set your radius here
            ),
            showCheckmark: false,
            side: const BorderSide(
              style: BorderStyle.none,
              color: Colors.transparent,
            ),
            onSelected: (_) {
              onSelectionChanged(null);
            },
          ),
          for (final type in AssetType.values)
            ChoiceChip(
              label: Text(getAssetTypeLabel(type, l10n)),
              selected: filter == type,
              selectedColor: context.colors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16.0,
                ), // Set your radius here
              ),
              showCheckmark: false,
              side: const BorderSide(
                style: BorderStyle.none,
                color: Colors.transparent,
              ),
              onSelected: (selected) {
                if (selected) onSelectionChanged(type);
              },
            ),
        ],
      ),
    );
  }
}

final class _TotalCostCard extends StatelessWidget {
  const _TotalCostCard({required this.assets});

  final List<Asset> assets;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final total = assets.fold<double>(0, (sum, a) => sum + a.value);

    final changePercent = total == 0
        ? 0.0
        : assets.fold<double>(0, (sum, a) => sum + a.value * a.changePercent) /
              total;

    final changeAmountAndPercent =
        '${changePercent > 0 ? '+' : '-'}${formatMoney(total * changePercent / 100)} (${changePercent.toStringAsFixed(2)}%)';

    return AppSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.assetsTotalCost, style: TextStyle(fontSize: 12, color: context.colors.onSurface)),
          Text(
            formatMoney(total),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            changeAmountAndPercent,
            style: TextStyle(
              color: changePercent >= 0
                  ? context.colors.profit
                  : context.colors.loss,
            ),
          ),
        ],
      ),
    );
  }
}

final class AssetsScreen extends ConsumerWidget {
  const AssetsScreen({super.key});

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
              _AssetTypeFilterSegmented(
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
                    return ListView(
                      children: [_TotalCostCard(assets: assets)],
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
