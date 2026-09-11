import 'package:drift/drift.dart';

class OperationsTable extends Table {
  TextColumn get id => text()();

  TextColumn get type => text()();

  IntColumn get amount => integer()();

  DateTimeColumn get date => dateTime()();

  TextColumn get assetId => text().nullable()();

  TextColumn get description => text().nullable()();

  TextColumn get category => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
