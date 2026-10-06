import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/repositories/asset_repository.dart';
import 'package:uuid/uuid.dart';

class MockAssetRepository implements AssetRepository {
  final List<Asset> assets = [
    Asset(
      id: '1',
      name: 'Газпромнефть',
      type: AssetType.stock,
      value: 2_622_000,
      changePercent: 1.2,
      color: 0xFF0000FF,
      image: 'https://s3-symbol-logo.tradingview.com/gazprom.svg',
    ),
    Asset(
      id: '2',
      name: 'Роснефть',
      type: AssetType.stock,
      value: 1_449_000,
      changePercent: 1.2,
      color: 0xFFFFF700,
      image: 'https://s3-symbol-logo.tradingview.com/rosneft.svg',
    ),
    Asset(
      id: '5',
      name: 'Фосагро',
      type: AssetType.stock,
      value: 1_288_000,
      changePercent: 1.2,
      color: 0xFF132564,
      image: 'https://s3-symbol-logo.tradingview.com/phosagro.svg',
    ),
    Asset(
      id: '3',
      name: 'Золото биржевое',
      type: AssetType.metal,
      value: 4_650_000,
      changePercent: 3,
      color: 0xFFFFD500,
      image: 'https://s3-symbol-logo.tradingview.com/metal/gold.svg',
    ),
    Asset(
      id: '6',
      name: 'ПАРУС ДВН',
      type: AssetType.commercialEstate,
      value: 366_000,
      changePercent: 1.2,
      color: 0xFF158D0C,
    ),
    Asset(
      id: '4',
      name: 'Доллары',
      type: AssetType.currency,
      value: 40_000,
      changePercent: 1,
      color: 0xFF6BCE57,
      image: 'https://s3-symbol-logo.tradingview.com/country/US.svg',
    ),
  ];

  @override
  Future<List<Asset>> getAssets({AssetType? type}) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    List<Asset> result = [...assets];

    if (type != null) {
      result = result.where((asset) => asset.type == type).toList();
    }

    return result;
  }

  @override
  Future<Asset?> getAsset(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return assets.where((asset) => asset.id == id).firstOrNull;
  }

  @override
  Future<Asset> createAsset(NewAsset newAsset) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    final asset = Asset(
      id: const Uuid().v4(),
      name: newAsset.name,
      type: newAsset.type,
      value: newAsset.value,
      changePercent: newAsset.changePercent,
      color: newAsset.color,
      image: newAsset.image,
    );

    assets.add(asset);

    return asset;
  }

  @override
  Future<Asset> updateAsset(Asset asset) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    final notFound =
        assets.any((listAsset) => listAsset.id == asset.id) == false;
    if (notFound) {
      throw Exception('Asset not found');
    }

    assets.removeWhere((listAsset) => listAsset.id == asset.id);
    assets.add(asset);

    return asset;
  }

  @override
  Future<void> deleteAsset(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    final notFound = assets.any((listAsset) => listAsset.id == id) == false;
    if (notFound) {
      throw Exception('Asset not found');
    }

    assets.removeWhere((listAsset) => listAsset.id == id);
  }
}
