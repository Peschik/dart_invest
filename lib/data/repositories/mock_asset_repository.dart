import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/repositories/asset_repository.dart';

class MockAssetRepository implements AssetRepository {
  @override
  Future<List<Asset>> getAssets() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return const [
      Asset(
        id: '1',
        name: 'Сбербанк',
        type: AssetType.stock,
        value: 28000,
        changePercent: 1.2,
      ),
      Asset(
        id: '2',
        name: 'Золото биржевое',
        type: AssetType.metal,
        value: 1145600,
        changePercent: 3,
      ),
      Asset(
        id: '3',
        name: 'Доллары',
        type: AssetType.currency,
        value: 8250,
        changePercent: 1,
      ),
    ];
  }
}
