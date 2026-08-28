import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/l10n/app_localizations.dart';
import 'package:flutter_study/l10n/app_localizations_en.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/features/operations/presentation/operations_providers.dart';

final class OperationsScreen extends ConsumerWidget {
  const OperationsScreen({super.key});

  Future<bool> _confirmDelete(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n?.operationDelete ?? ''),
        content: Text(l10n?.operationDeleteConfirm ?? ''),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n?.operationDelete ?? ''),
          ),
        ],
      ),
    );

    return confirmed ?? false;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final operations = ref.watch(operationsProvider);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: operations.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) =>
            Center(child: Text('Error while getting operations: $error')),

        data: (operations) {
          if (operations.isEmpty) {
            return Center(child: Text(l10n?.operationsEmpty ?? ''));
          }

          return ListView.builder(
            itemCount: operations.length,
            itemBuilder: (context, index) {
              final operation = operations[index];

              String sign = '+';
              Color color = context.colors.profit;

              if (operation.type == OperationType.expense) {
                sign = '-';
                color = context.colors.loss;
              }

              return Dismissible(
                key: ValueKey(operation.id),
                direction: DismissDirection.endToStart,
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  color: Theme.of(context).colorScheme.error,
                  child: Icon(
                    Icons.delete,
                    color: Theme.of(context).colorScheme.onError,
                  ),
                ),
                confirmDismiss: (_) => _confirmDelete(context),
                onDismissed: (_) {
                  ref
                      .read(operationsProvider.notifier)
                      .deleteOperation(operation.id);
                },
                child: ListTile(
                  title: Text(operation.description ?? operation.type.name),
                  subtitle: Text(operation.date.toString()),
                  trailing: Text(
                    '$sign${formatMoney(operation.amount)}',
                    style: TextStyle(color: color),
                  ),
                  onTap: () {
                    context.push('/operations/${operation.id}/edit');
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
