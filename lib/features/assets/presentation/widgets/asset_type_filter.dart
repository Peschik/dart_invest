import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/utils/get_asset_type_label.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

final class AssetTypeFilter extends StatelessWidget {
  const AssetTypeFilter({
    required super.key,
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
