import 'package:drift/drift.dart';
import 'package:flutter_study/data/local/app_database.dart';
import 'package:flutter_study/data/mappers/operation_mapper.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/domain/repositories/operation_repository.dart';
import 'package:uuid/uuid.dart';

class DriftOperationRepository implements OperationRepository {
  DriftOperationRepository(this._db);

  final AppDatabase _db;

  @override
  Future<List<Operation>> getOperations() async {
    await _ensureSeed();

    final rows = await (_db.select(
      _db.operationsTable,
    )..orderBy([(table) => OrderingTerm.desc(table.date)])).get();

    return rows.map(OperationMapper.toDomain).toList();
  }

  @override
  Future<Operation?> getOperation(String id) async {
    final row = await (_db.select(
      _db.operationsTable,
    )..where((table) => table.id.equals(id))).getSingleOrNull();

    return row == null ? null : OperationMapper.toDomain(row);
  }

  @override
  Future<Operation> createOperation(NewOperation operation) async {
    final row = OperationMapper.toCompanion(
      Operation(
        id: const Uuid().v4(),
        type: operation.type,
        amount: operation.amount,
        date: operation.date,
        description: operation.description,
        assetId: operation.assetId,
      ),
    );
    final inserted = await _db.into(_db.operationsTable).insertReturning(row);

    return OperationMapper.toDomain(inserted);
  }

  @override
  Future<Operation> updateOperation(Operation operation) async {
    final isUpdated = await (_db
        .update(_db.operationsTable)
        .replace(OperationMapper.toCompanion(operation)));

    return isUpdated
        ? operation
        : throw Exception('Failed to update operation');
  }

  @override
  Future<void> deleteOperation(String id) async {
    final deletedRows = await ((_db.delete(
      _db.operationsTable,
    ))..where((table) => table.id.equals(id))).go();

    if (deletedRows == 0) throw Exception('Failed to delete operation');
  }

  Future<void> _ensureSeed() async {
    final count = await _db
        .select(_db.operationsTable)
        .get()
        .then((rows) => rows.length);

    if (count > 0) return;

    await createOperation(
      NewOperation(
        type: OperationType.income,
        amount: 1000,
        date: DateTime(2026, 1, 1, 10),
      ),
    );
    await createOperation(
      NewOperation(
        type: OperationType.expense,
        amount: 500,
        date: DateTime(2026, 1, 2, 10),
      ),
    );
  }
}
