import 'package:flutter_study/domain/entities/account.dart';
import 'package:flutter_study/domain/repositories/account_repository.dart';

class MockAccountRepository implements AccountRepository {
  final _mockAccounts = const [
    Account(id: '1', bankName: 'ВТБ', balance: 6471000, changePercent: -0.82),
    Account(
      id: '2',
      bankName: 'Сбербанк',
      balance: 1681000,
      changePercent: 0.12,
    ),
    Account(
      id: '3',
      bankName: 'Тинькофф',
      balance: 254000,
      changePercent: 0.18,
    ),
    Account(
      id: '4',
      bankName: 'Альфа-Банк',
      balance: 998000,
      changePercent: 1.10,
    ),
  ];

  @override
  Future<List<Account>> getAccounts() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    return _mockAccounts;
  }
}
