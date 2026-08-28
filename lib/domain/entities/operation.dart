import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation.freezed.dart';

enum OperationType { income, expense }

enum OperationCategory { purchase, sale }

@freezed
abstract class Operation with _$Operation {
  const factory Operation({
    required String id,
    required OperationType type,
    required int amount,
    required DateTime date,
    String? assetId,
    String? description,
  }) = _Operation;
}

@freezed
abstract class NewOperation with _$NewOperation {
  const factory NewOperation({
    required OperationType type,
    required int amount,
    required DateTime date,
    String? assetId,
    String? description,
  }) = _NewOperation;
}
