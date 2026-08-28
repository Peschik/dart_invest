import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/features/operations/presentation/operations_providers.dart';

final class OperationsScreen extends ConsumerWidget {
  const OperationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final operations = ref.watch(operationsProvider);

    return Scaffold(
      body: operations.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) =>
            Center(child: Text('Error while getting operations: $error')),

        data: (operations) => ListView.builder(
          itemCount: operations.length,
          itemBuilder: (context, index) {
            final operation = operations[index];

            String sign = '+';
            Color color = context.colors.profit;

            if (operation.type == OperationType.expense) {
              sign = '-';
              color = context.colors.loss;
            }

            return GestureDetector(
              onTap: () {
                context.push('/operations/${operation.id}/edit');
              },
              child: ListTile(
                title: Text(operation.type.name),
                subtitle: Text(operation.date.toString()),
                trailing: Text(
                  '$sign${formatMoney(operation.amount)}',
                  style: TextStyle(color: color),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
