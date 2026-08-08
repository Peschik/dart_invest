import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/domain/repositories/operation_repository.dart';

class MockOperationRepository implements OperationRepository {
  @override
  Future<List<Operation>> getOperations() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return [
      Operation(
        id: '1',
        type: OperationType.income,
        amount: 1000,
        date: DateTime(2026, 1, 1, 10, 0, 0),
      ),
      Operation(
        id: '2',
        type: OperationType.expense,
        amount: 500,
        date: DateTime(2026, 1, 2, 10, 0, 0),
      ),
    ];
  }
}
