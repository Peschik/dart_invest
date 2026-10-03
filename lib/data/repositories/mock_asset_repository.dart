import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/repositories/asset_repository.dart';

class MockAssetRepository implements AssetRepository {
  @override
  Future<List<Asset>> getAssets() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

// 9,904
    return const [
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
  }
}
