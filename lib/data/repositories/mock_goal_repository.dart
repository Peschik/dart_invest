import 'package:flutter_study/domain/entities/goal.dart';
import 'package:flutter_study/domain/repositories/goal_repository.dart';
import 'package:collection/collection.dart';

class MockGoalRepository implements GoalRepository {
  final _mockGoals = const [
    Goal(
      id: '1',
      title: 'Купить квартиру',
      target: 16_000_000,
      current: 12_500_000,
    ),
    Goal(
      id: '2',
      title: 'Довести REIT до 20%',
      target: 3_000_000,
      current: 360_000,
    ),
  ];

  @override
  Future<List<Goal>> getGoals() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return _mockGoals;
  }

  @override
  Future<Goal?> getGoal(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return _mockGoals.firstWhereOrNull((goal) => goal.id == id);
  }
}
