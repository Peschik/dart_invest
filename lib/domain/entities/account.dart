import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String id,
    required String bankName,
    required double balance,
    required double changePercent,
  }) = _Account;
}
