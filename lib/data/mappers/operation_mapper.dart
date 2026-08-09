import 'package:drift/drift.dart';
import 'package:flutter_study/data/local/app_database.dart';
import 'package:flutter_study/domain/entities/operation.dart';

abstract final class OperationMapper {
  static Operation toDomain(OperationsTableData row) {
    return Operation(
      id: row.id,
      type: OperationType.values[row.type],
      amount: row.amount,
      date: row.date,
      assetId: row.assetId,
      description: row.description,
    );
  }

  static OperationsTableCompanion toCompanion(Operation operation) {
    return OperationsTableCompanion.insert(
      id: operation.id,
      type: operation.type.index,
      amount: operation.amount,
      date: operation.date,
      assetId: Value(operation.assetId),
      description: Value(operation.description),
    );
  }
}
