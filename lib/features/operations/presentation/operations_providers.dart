import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/data/local/app_database_provider.dart';
import 'package:flutter_study/data/repositories/drift_operation_repository.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/domain/repositories/operation_repository.dart';

final operationRepositoryProvider = Provider<OperationRepository>(
  (ref) => DriftOperationRepository(ref.watch(appDatabaseProvider)),
);

class OperationsNotifier extends AsyncNotifier<List<Operation>> {
  OperationRepository get _repo => ref.read(operationRepositoryProvider);

  @override
  Future<List<Operation>> build() => _repo.getOperations();

  Future<void> createOperation(NewOperation newOperation) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repo.createOperation(newOperation);
      return _repo.getOperations();
    });
  }

  Future<void> updateOperation(Operation operation) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _repo.updateOperation(operation);
      return _repo.getOperations();
    });

    if (!state.hasError) {
      ref.invalidate(operationProvider(operation.id));
    }
  }

  Future<void> deleteOperation(String id) async {
    state = await AsyncValue.guard(() async {
      await _repo.deleteOperation(id);
      return _repo.getOperations();
    });

    if (!state.hasError) {
      ref.invalidate(operationProvider(id));
    }
  }
}

final operationsProvider =
    AsyncNotifierProvider<OperationsNotifier, List<Operation>>(
      OperationsNotifier.new,
    );

final operationProvider = FutureProvider.family<Operation?, String>(
  (ref, id) => ref.watch(operationRepositoryProvider).getOperation(id),
);
