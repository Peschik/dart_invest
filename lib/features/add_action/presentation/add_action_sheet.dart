import 'package:flutter/material.dart';
import 'package:flutter_study/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

final class AddActionSheet extends StatelessWidget {
  const AddActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        spacing: 12,
        children: [
          Text('Создать', style: TextStyle(fontSize: 18)),
          GestureDetector(
            onTap: () => context.push('/operations/new'),
            child: Row(
              children: [
                Icon(Icons.change_circle_outlined),
                const SizedBox(width: 4),
                Text(l10n.operation),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> showAddActionSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (_) => const AddActionSheet(),
  );
}
