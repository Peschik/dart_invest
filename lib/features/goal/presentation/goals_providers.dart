import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/domain/entities/goal.dart';
import 'package:flutter_study/domain/repositories/goal_repository.dart';
import 'package:flutter_study/data/repositories/mock_goal_repository.dart';

final goalRepositoryProvider = Provider<GoalRepository>(
  (ref) => MockGoalRepository(),
);

final goalsProvider = FutureProvider<List<Goal>>((ref) async {
  return ref.watch(goalRepositoryProvider).getGoals();
});

final goalProvider = FutureProvider.family<Goal?, String>(
  (ref, id) => ref.watch(goalRepositoryProvider).getGoal(id),
);
