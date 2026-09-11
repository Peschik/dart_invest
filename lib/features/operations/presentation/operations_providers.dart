import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_study/data/local/app_database_provider.dart';
import 'package:flutter_study/data/repositories/drift_operation_repository.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/domain/repositories/operation_repository.dart';

final operationRepositoryProvider = Provider<OperationRepository>(
  (ref) => DriftOperationRepository(ref.watch(appDatabaseProvider)),
);

final operationsFilterProvider = StateProvider<String?>((ref) => null);

class OperationsNotifier extends AsyncNotifier<List<Operation>> {
  OperationRepository get _repo => ref.read(operationRepositoryProvider);

  @override
  Future<List<Operation>> build() {
    final type = ref.watch(operationsFilterProvider);

    return _repo.getOperations(type: type);
  }

  Future<void> createOperation(NewOperation newOperation) async {
    final operation = await _repo.createOperation(newOperation);

    final type = ref.read(operationsFilterProvider);
    state = AsyncData(await _repo.getOperations(type: type));
    ref.invalidate(operationProvider(operation.id));
  }

  Future<void> updateOperation(Operation operation) async {
    await _repo.updateOperation(operation);

    final type = ref.read(operationsFilterProvider);
    state = AsyncData(await _repo.getOperations(type: type));
    ref.invalidate(operationProvider(operation.id));
  }

  Future<void> deleteOperation(String id) async {
    await _repo.deleteOperation(id);

    final type = ref.read(operationsFilterProvider);
    state = AsyncData(await _repo.getOperations(type: type));
    ref.invalidate(operationProvider(id));
  }
}

final operationsProvider =
    AsyncNotifierProvider<OperationsNotifier, List<Operation>>(
      OperationsNotifier.new,
    );

final operationProvider = FutureProvider.family<Operation?, String>(
  (ref, id) => ref.watch(operationRepositoryProvider).getOperation(id),
);
