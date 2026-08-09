import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/data/local/app_database_provider.dart';
import 'package:flutter_study/data/repositories/drift_operation_repository.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/domain/repositories/operation_repository.dart';

final operationRepositoryProvider = Provider<OperationRepository>(
  (ref) => DriftOperationRepository(ref.watch(appDatabaseProvider)),
);

final operationsProvider = FutureProvider<List<Operation>>(
  (ref) => ref.watch(operationRepositoryProvider).getOperations(),
);
