import 'package:drift/drift.dart';
import 'package:flutter_study/data/local/app_database.dart';
import 'package:flutter_study/domain/entities/asset.dart';

abstract final class AssetMapper {
  static Asset toDomain(AssetsTableData row) {
    return Asset(
      id: row.id,
      type: AssetType.values.byName(row.type),
      name: row.name,
      value: row.value,
      changePercent: row.changePercent,
      color: row.color,
      image: row.image,
    );
  }

  static AssetsTableCompanion toCompanion(Asset asset) {
    return AssetsTableCompanion.insert(
      id: asset.id,
      name: asset.name,
      type: asset.type.name,
      value: asset.value,
      changePercent: asset.changePercent,
      color: Value(asset.color),
      image: Value(asset.image),
    );
  }
}
