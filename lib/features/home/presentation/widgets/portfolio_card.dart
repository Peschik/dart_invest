import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/domain/entities/asset.dart';
import 'package:flutter_study/features/home/presentation/home_dashboard.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'dart:math' show pi;

final class _PortfolioDonutPainter extends CustomPainter {
  const _PortfolioDonutPainter({
    required this.slices,
    required this.trackColor,
    this.strokeWidth = 10,
  });

  final List<({double share, Color color})> slices;
  final Color trackColor;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.shortestSide - strokeWidth) / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);

    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawArc(rect, 0, 2 * pi, false, trackPaint);

    var startAngle = -pi / 2;
    for (final slice in slices) {
      if (slice.share <= 0) continue;

      final sweep = 2 * pi * slice.share;
      final slicePaint = Paint()
        ..color = slice.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.butt;

      canvas.drawArc(rect, startAngle, sweep, false, slicePaint);
      startAngle += sweep;
    }
  }

  @override
  bool shouldRepaint(covariant _PortfolioDonutPainter old) {
    return old.trackColor != trackColor ||
        old.strokeWidth != strokeWidth ||
        old.slices.length != slices.length ||
        !listEquals(
          old.slices.map((s) => (s.share, s.color)).toList(),
          slices.map((s) => (s.share, s.color)).toList(),
        );
  }
}

final class PortfolioCard extends StatelessWidget {
  const PortfolioCard({super.key, required this.portfolio});

  final List<PortfolioSlice> portfolio;

  String _getAssetTypeLabel(AssetType type) {
    switch (type) {
      case AssetType.cash:
        return 'Cash';
      case AssetType.stock:
        return 'Stocks';
      case AssetType.metal:
        return 'Metal';
      case AssetType.currency:
        return 'Currency';
      case AssetType.commercialEstate:
        return 'Commercial Estate';
    }
  }

  Color _colorFor(AssetType type, AppColors colors) {
    return switch (type) {
      AssetType.metal => colors.metal,
      AssetType.stock => colors.primary,
      AssetType.currency => colors.profit,
      AssetType.cash => colors.onSurface.withValues(alpha: 0.45),
      AssetType.commercialEstate => colors.loss,
    };
  }

  @override
  Widget build(BuildContext context) {
    return AppSectionCard(
      child: Column(
        children: [
          Row(children: [Text('Распределение портфеля')]),

          Row(
            children: [
              SizedBox(
                width: 72,
                height: 72,
                child: CustomPaint(
                  painter: _PortfolioDonutPainter(
                    slices: [
                      for (final slice in portfolio)
                        (
                          share: slice.share,
                          color: _colorFor(slice.type, context.colors),
                        ),
                    ],
                    trackColor: context.colors.border,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  children: [
                    for (final slice in portfolio)
                      Row(
                        children: [
                          Text(_getAssetTypeLabel(slice.type)),
                          const SizedBox(width: 8),
                          Text('${(slice.share * 100).toStringAsFixed(2)}%'),
                        ],
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
