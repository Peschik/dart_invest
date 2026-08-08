import 'package:flutter/material.dart';

final class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goal $id')),
      body: Center(child: Text('Тут будеть целя')),
    );
  }
}
