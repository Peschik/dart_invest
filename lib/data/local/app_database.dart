import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter_study/data/local/tables/operations_table.dart';
import 'package:flutter_study/data/local/tables/assets_table.dart';
import 'package:flutter_study/data/repositories/drift_asset_repository.dart';
import 'package:flutter_study/data/repositories/drift_operation_repository.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [OperationsTable, AssetsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 4;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'flutter_study');
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createTable(operationsTable);
      await m.createTable(assetsTable);

      await DriftOperationRepository(this).ensureSeed();
      await DriftAssetRepository(this).ensureSeed();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      if (from < 3) {
        await customStatement(
          "UPDATE operations_table SET type = 'income' WHERE type IN ('0', 0)",
        );
        await customStatement(
          "UPDATE operations_table SET type = 'expense' WHERE type IN ('1', 1)",
        );
        await m.addColumn(operationsTable, operationsTable.category);
      }

      if (from < 4) {
        await m.createTable(assetsTable);
        await DriftAssetRepository(this).ensureSeed();
      }
    },
  );
}
