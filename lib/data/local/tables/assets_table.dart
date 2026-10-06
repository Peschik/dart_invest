import 'package:drift/drift.dart';

class AssetsTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get type => text()();

  RealColumn get value => real()();

  RealColumn get changePercent => real()();

  @override
  Set<Column> get primaryKey => {id};

  IntColumn get color => integer().nullable()();

  TextColumn get image => text().nullable()();
}
