import 'package:drift/drift.dart';
import 'package:flutter_study/data/local/app_database.dart';
import 'package:flutter_study/data/mappers/asset_mapper.dart';
import 'package:flutter_study/data/repositories/mock_asset_repository.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/domain/repositories/asset_repository.dart';
import 'package:uuid/uuid.dart';

class DriftAssetRepository implements AssetRepository {
  DriftAssetRepository(this._db);

  final AppDatabase _db;

  @override
  Future<List<Asset>> getAssets({AssetType? type}) async {
    final query = _db.select(_db.assetsTable)
      ..orderBy([(table) => OrderingTerm.desc(table.value)]);

    if (type != null) {
      query.where((table) => table.type.equals(type.name));
    }

    return (await query.get()).map(AssetMapper.toDomain).toList();
  }

  @override
  Future<Asset?> getAsset(String id) async {
    final row = await (_db.select(
      _db.assetsTable,
    )..where((table) => table.id.equals(id))).getSingleOrNull();

    return row == null ? null : AssetMapper.toDomain(row);
  }

  @override
  Future<Asset> createAsset(NewAsset newAsset) async {
    final row = AssetMapper.toCompanion(
      Asset(
        id: Uuid().v4(),
        name: newAsset.name,
        type: newAsset.type,
        value: newAsset.value,
        changePercent: newAsset.changePercent,
        color: newAsset.color,
        image: newAsset.image,
      ),
    );

    final inserted = await _db.into(_db.assetsTable).insertReturning(row);

    return AssetMapper.toDomain(inserted);
  }

  @override
  Future<Asset> updateAsset(Asset asset) async {
    final row = AssetMapper.toCompanion(asset);

    final isUpdated = await _db.update(_db.assetsTable).replace(row);

    return isUpdated ? asset : throw Exception('Failed to update asset');
  }

  @override
  Future<void> deleteAsset(String id) async {
    final deletedRows = await (_db.delete(
      _db.assetsTable,
    )..where((table) => table.id.equals(id))).go();

    if (deletedRows == 0) throw Exception('Failed to delete asset');
  }

  Future<void> ensureSeed() async {
    final count = await _db
        .select(_db.assetsTable)
        .get()
        .then((rows) => rows.length);

    if (count > 0) return;

    for (final asset in MockAssetRepository().assets) {
      await createAsset(
        NewAsset(
          name: asset.name,
          type: asset.type,
          value: asset.value,
          changePercent: asset.changePercent,
          color: asset.color,
          image: asset.image,
        ),
      );
    }
  }

  Future<void> updateAssetPresentation(Asset mockAsset) {
    return (_db.update(
      _db.assetsTable,
    )..where((asset) => asset.name.equals(mockAsset.name))).write(
      AssetsTableCompanion(
        color: Value(mockAsset.color),
        image: Value(mockAsset.image),
      ),
    );
  }
}
