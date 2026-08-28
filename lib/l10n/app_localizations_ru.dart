// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get greetings => 'Доброе утро, Артем! 🖖';

  @override
  String get navHome => 'Главная';

  @override
  String get navAssets => 'Активы';

  @override
  String get navOperations => 'Операции';

  @override
  String get navAnalytics => 'Аналитика';

  @override
  String get addActionTitle => 'Добавить';

  @override
  String get familyCapital => 'Семейный капитал';

  @override
  String get operation => 'Операция';
}
