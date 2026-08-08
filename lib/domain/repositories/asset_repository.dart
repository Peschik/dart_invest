import 'package:flutter_study/domain/entities/asset.dart';

abstract class AssetRepository {
  Future<List<Asset>> getAssets();
}
