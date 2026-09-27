import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/domain/entities/account.dart';
import 'package:flutter_study/domain/repositories/account_repository.dart';
import 'package:flutter_study/data/repositories/mock_account_repository.dart';

final accountRepositoryProvider = Provider<AccountRepository>(
  (ref) => MockAccountRepository(),
);

final accountsProvider = FutureProvider<List<Account>>((ref) async {
  return ref.watch(accountRepositoryProvider).getAccounts();
});
