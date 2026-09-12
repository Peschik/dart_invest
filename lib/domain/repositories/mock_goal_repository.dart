import 'package:flutter_study/domain/entities/goal.dart';
import 'package:flutter_study/domain/repositories/goal_repository.dart';
import 'package:collection/collection.dart';

final mockGoals = const [
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

class MockGoalRepository implements GoalRepository {
  @override
  Future<List<Goal>> getGoals() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return mockGoals;
  }

  Future<Goal?> getGoal(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return mockGoals.firstWhereOrNull((goal) => goal.id == id);
  }
}
