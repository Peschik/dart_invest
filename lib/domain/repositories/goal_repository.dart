import 'package:flutter_study/domain/entities/goal.dart';

abstract class GoalRepository {
  Future<List<Goal>> getGoals();

  Future<Goal?> getGoal(String id);
}
