import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/domain/repositories/operation_repository.dart';
import 'package:uuid/uuid.dart';

class MockOperationRepository implements OperationRepository {
  final List<Operation> operations = [
    Operation(
      id: '1',
      type: OperationType.income,
      amount: 1000,
      date: DateTime(2026, 1, 1, 10, 0, 0),
    ),
    Operation(
      id: '2',
      type: OperationType.income,
      amount: 1000,
      date: DateTime(2026, 1, 1, 10, 0, 0),
    ),
    Operation(
      id: '3',
      type: OperationType.expense,
      amount: 500,
      date: DateTime(2026, 1, 2, 10, 0, 0),
    ),
  ];

  @override
  Future<List<Operation>> getOperations() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return operations;
  }

  @override
  Future<Operation?> getOperation(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return operations.where((operation) => operation.id == id).firstOrNull;
  }

  @override
  Future<Operation> createOperation(NewOperation newOperation) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final operation = Operation(
      id: const Uuid().v4(),
      type: newOperation.type,
      amount: newOperation.amount,
      date: newOperation.date,
      description: newOperation.description,
    );
    operations.add(operation);

    return operation;
  }

  @override
  Future<Operation> updateOperation(Operation operation) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    operations.removeWhere((listOperation) => listOperation.id == operation.id);
    operations.add(operation);

    return operation;
  }

  @override
  Future<void> deleteOperation(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    operations.removeWhere((listOperation) => listOperation.id == id);
  }
}
