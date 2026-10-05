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

  @override
  String get operationsEmpty => 'Пока нет операций';

  @override
  String get operationDelete => 'Удалить';

  @override
  String get operationDeleteConfirm => 'Удалить эту операцию?';

  @override
  String get operationsLoadError => 'Не удалось загрузить операции';

  @override
  String get portfolioDistribution => 'Распределение портфеля';

  @override
  String get accountsSection => 'Счета';

  @override
  String get seeAll => 'Смотреть все';

  @override
  String get goalSaved => 'Накоплено';

  @override
  String get goalLeft => 'Осталось';

  @override
  String get goalTarget => 'Цель';

  @override
  String get goalNotFound => 'Цель не найдена';

  @override
  String get goalLoadError => 'Не удалось загрузить цель';

  @override
  String homeLoadError(Object error) {
    return 'Не удалось загрузить главную';
  }

  @override
  String get assetTypeStock => 'Акции';

  @override
  String get assetTypeMetal => 'Металлы';

  @override
  String get assetTypeCurrency => 'Валюта';

  @override
  String get assetTypeCash => 'Кэш';

  @override
  String get assetTypeCommercialEstate => 'Недвижимость';

  @override
  String get operationTypeAll => 'Все';

  @override
  String get operationTypeIncome => 'Поступление';

  @override
  String get operationTypeExpense => 'Вывод';

  @override
  String get assetsTotalCost => 'Общая стоимость';
}
