// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get greetings => 'Good morning, Artyom! 🖖';

  @override
  String get navHome => 'Home';

  @override
  String get navAssets => 'Assets';

  @override
  String get navOperations => 'Operations';

  @override
  String get navAnalytics => 'Analytics';

  @override
  String get addActionTitle => 'Add';

  @override
  String get familyCapital => 'Family capital';

  @override
  String get operation => 'Operation';

  @override
  String get operationsEmpty => 'No operations yet';

  @override
  String get operationDelete => 'Delete';

  @override
  String get operationDeleteConfirm => 'Delete this operation?';

  @override
  String get operationsLoadError => 'Couldn\'t load operations';

  @override
  String get portfolioDistribution => 'Portfolio distribution';

  @override
  String get accountsSection => 'Accounts';

  @override
  String get seeAll => 'See all';

  @override
  String get goalSaved => 'Saved';

  @override
  String get goalLeft => 'Left';

  @override
  String get goalTarget => 'Goal';

  @override
  String get goalNotFound => 'Goal not found';

  @override
  String get goalLoadError => 'Goal load error';

  @override
  String homeLoadError(Object error) {
    return 'Home load error $error';
  }

  @override
  String get assetTypeStock => 'Stocks';

  @override
  String get assetTypeMetal => 'Metals';

  @override
  String get assetTypeCurrency => 'Currencies';

  @override
  String get assetTypeCash => 'Cash';

  @override
  String get assetTypeCommercialEstate => 'Commercial estate';

  @override
  String get operationTypeAll => 'All';

  @override
  String get operationTypeIncome => 'Income';

  @override
  String get operationTypeExpense => 'Expense';

  @override
  String get assetsTotalCost => 'Total cost';
}
