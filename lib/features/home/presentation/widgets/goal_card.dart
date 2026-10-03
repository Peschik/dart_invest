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
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(goal.title, textAlign: TextAlign.left),
          Column(
            children: [
              SizedBox(
                width: 72,
                height: 72,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox.expand(
                      child: CircularProgressIndicator(
                        value: goal.progress,
                        strokeWidth: 8,
                        color: context.colors.primary,
                        backgroundColor: context.colors.onSurface.withValues(
                          alpha: 0.1,
                        ),
                      ),
                    ),
                    Text(
                      '${(goal.progress * 100).round()}%',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
