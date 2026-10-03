import 'package:flutter_study/domain/entities/asset.dart';

abstract class AssetRepository {
  Future<List<Asset>> getAssets({AssetType? type});
  Future<Asset?> getAsset(String id);
  Future<Asset> createAsset(NewAsset asset);
  Future<Asset> updateAsset(Asset asset);
  Future<void> deleteAsset(String id);
}
