import 'package:flutter/material.dart';

final class AddActionSheet extends StatelessWidget {
  const AddActionSheet({super.key});

  @override
  Widget build(BuildContext context) => Column(children: []);
}

Future<void> showAddActionSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (_) => const AddActionSheet(),
  );
}
