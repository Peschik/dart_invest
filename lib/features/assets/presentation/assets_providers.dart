import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_study/data/local/app_database_provider.dart';
import 'package:flutter_study/data/repositories/drift_asset_repository.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/repositories/asset_repository.dart';

final assetRepositoryProvider = Provider<AssetRepository>(
  (ref) => DriftAssetRepository(ref.watch(appDatabaseProvider)),
);

final assetsFilterProvider = StateProvider<AssetType?>((ref) => null);

class AssetsNotifier extends AsyncNotifier<List<Asset>> {
  AssetRepository get _repo => ref.read(assetRepositoryProvider);

  @override
  Future<List<Asset>> build() {
    final type = ref.watch(assetsFilterProvider);

    return _repo.getAssets(type: type);
  }

  Future<void> createAsset(NewAsset newAsset) async {
    final asset = await _repo.createAsset(newAsset);

    final type = ref.read(assetsFilterProvider);
    state = AsyncData(await _repo.getAssets(type: type));
    ref.invalidate(assetProvider(asset.id));
  }

  Future<void> updateAsset(Asset asset) async {
    await _repo.updateAsset(asset);

    final type = ref.read(assetsFilterProvider);
    state = AsyncData(await _repo.getAssets(type: type));
    ref.invalidate(assetProvider(asset.id));
  }

  Future<void> deleteAsset(String id) async {
    await _repo.deleteAsset(id);

    final type = ref.read(assetsFilterProvider);
    state = AsyncData(await _repo.getAssets(type: type));
    ref.invalidate(assetProvider(id));
  }
}

final assetsProvider = AsyncNotifierProvider<AssetsNotifier, List<Asset>>(
  AssetsNotifier.new,
);

final assetProvider = FutureProvider.family<Asset?, String>(
  (ref, id) => ref.watch(assetRepositoryProvider).getAsset(id),
);
