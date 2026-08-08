import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/data/repositories/mock_asset_repository.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/repositories/asset_repository.dart';

final assetRepositoryProvider = Provider<AssetRepository>(
  (ref) => MockAssetRepository(),
);

final assetsProvider = FutureProvider<List<Asset>>((ref) async {
  return ref.watch(assetRepositoryProvider).getAssets();
});
