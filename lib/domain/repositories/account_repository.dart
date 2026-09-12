import 'package:flutter_study/domain/entities/account.dart';

abstract class AccountRepository {
  Future<List<Account>> getAccounts();
}
