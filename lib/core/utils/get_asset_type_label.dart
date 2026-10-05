import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

String getAssetTypeLabel(AssetType type, AppLocalizations l10n) {
  switch (type) {
    case AssetType.cash:
      return l10n.assetTypeCash;
    case AssetType.stock:
      return l10n.assetTypeStock;
    case AssetType.metal:
      return l10n.assetTypeMetal;
    case AssetType.currency:
      return l10n.assetTypeCurrency;
    case AssetType.commercialEstate:
      return l10n.assetTypeCommercialEstate;
  }
}
