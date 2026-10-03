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
    ),
    Asset(
      id: '2',
      name: 'Роснефть',
      type: AssetType.stock,
      value: 1_449_000,
      changePercent: 1.2,
    ),
    Asset(
      id: '5',
      name: 'Фосагро',
      type: AssetType.stock,
      value: 1_288_000,
      changePercent: 1.2,
    ),
    Asset(
      id: '3',
      name: 'Золото биржевое',
      type: AssetType.metal,
      value: 4_650_000,
      changePercent: 3,
    ),
    Asset(
      id: '6',
      name: 'ПАРУС ДВН',
      type: AssetType.commercialEstate,
      value: 366_000,
      changePercent: 1.2,
    ),
    Asset(
      id: '4',
      name: 'Доллары',
      type: AssetType.currency,
      value: 40_000,
      changePercent: 1,
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

  Future<Asset> createAsset(NewAsset newAsset) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    final asset = Asset(
      id: const Uuid().v4(),
      name: newAsset.name,
      type: newAsset.type,
      value: newAsset.value,
      changePercent: newAsset.changePercent,
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
