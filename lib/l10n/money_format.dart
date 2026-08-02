import 'package:intl/intl.dart';

String formatMoney(num amount, {String locale = 'ru_RU', String symbol = '₽'}) {
  final format = NumberFormat.currency(
    locale: locale,
    symbol: symbol,
    decimalDigits: 2,
  );

  return format.format(amount);
}
