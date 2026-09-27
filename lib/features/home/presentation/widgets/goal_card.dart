import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/domain/entities/goal.dart';

final class GoalCard extends StatelessWidget {
  const GoalCard({super.key, required this.goal});

  final Goal goal;

  @override
  Widget build(BuildContext context) {
    return AppSectionCard(
      child: Column(
        children: [
          Text(goal.title),
          Row(
            children: [
              SizedBox(
                width: 72,
                height: 72,
                child: CircularProgressIndicator(
                  value: goal.progress,
                  strokeWidth: 8,
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
