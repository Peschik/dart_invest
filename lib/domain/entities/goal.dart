import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal.freezed.dart';

@freezed
abstract class Goal with _$Goal {
  const Goal._();

  const factory Goal({
    required String id,
    required String title,
    required num target,
    required num current,
  }) = _Goal;

  int get progress {
    if (target <= 0) return 0;

    return ((current / target) * 100).clamp(0, 100).toInt();
  }

  double get remaining => (target.toDouble() - current.toDouble()).clamp(0, double.infinity);
}
