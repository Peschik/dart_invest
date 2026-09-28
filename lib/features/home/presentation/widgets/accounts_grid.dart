import 'package:flutter/material.dart';
import 'package:flutter_study/core/format/format_signed_percent.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/widgets/app_section_card.dart';
import 'package:flutter_study/domain/entities/account.dart';

final class AccountsGrid extends StatelessWidget {
  const AccountsGrid({super.key, required this.accounts});

  final List<Account> accounts;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.6,
      children: [
        for (final account in accounts)
          AppSectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(account.bankName),
                Text(formatMoney(account.balance)),
                Text(formatSignedPercent(account.changePercent)),
              ],
            ),
          ),
      ],
    );
  }
}
