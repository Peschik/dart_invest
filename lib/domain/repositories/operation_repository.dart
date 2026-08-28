import 'package:flutter_study/domain/entities/operation.dart';

abstract class OperationRepository {
  Future<List<Operation>> getOperations();
  Future<Operation?> getOperation(String id);
  Future<Operation> createOperation(NewOperation operation);
  Future<Operation> updateOperation(Operation operation);
  Future<void> deleteOperation(String id);
}
