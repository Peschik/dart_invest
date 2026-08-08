import 'package:flutter_study/domain/entities/operation.dart';

abstract class OperationRepository {
  Future<List<Operation>> getOperations();
}
