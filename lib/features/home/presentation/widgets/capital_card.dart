import 'package:flutter/material.dart';
import 'package:flutter_study/app/theme/app_colors.dart';
import 'package:flutter_study/core/format/format_signed_percent.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/l10n/app_localizations.dart';

final class CapitalCard extends StatelessWidget {
  const CapitalCard({
    super.key,
    required this.capital,
    required this.changePercent,
  });

  final String capital;
  final double changePercent;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AppSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.familyCapital),
          Text(formatMoney(num.parse(capital))),
          Text(
            formatSignedPercent(changePercent),
            style: TextStyle(
              color: changePercent > 0
                  ? context.colors.profit
                  : context.colors.loss,
            ),
          ),
        ],
      ),
    );
  }
}
