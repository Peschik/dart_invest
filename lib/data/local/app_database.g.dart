// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $OperationsTableTable extends OperationsTable
    with TableInfo<$OperationsTableTable, OperationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OperationsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _assetIdMeta = const VerificationMeta(
    'assetId',
  );
  @override
  late final GeneratedColumn<String> assetId = GeneratedColumn<String>(
    'asset_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    type,
    amount,
    date,
    assetId,
    description,
    category,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'operations_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<OperationsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('asset_id')) {
      context.handle(
        _assetIdMeta,
        assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OperationsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OperationsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      assetId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}asset_id'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
    );
  }

  @override
  $OperationsTableTable createAlias(String alias) {
    return $OperationsTableTable(attachedDatabase, alias);
  }
}

class OperationsTableData extends DataClass
    implements Insertable<OperationsTableData> {
  final String id;
  final String type;
  final int amount;
  final DateTime date;
  final String? assetId;
  final String? description;
  final String? category;
  const OperationsTableData({
    required this.id,
    required this.type,
    required this.amount,
    required this.date,
    this.assetId,
    this.description,
    this.category,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['type'] = Variable<String>(type);
    map['amount'] = Variable<int>(amount);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || assetId != null) {
      map['asset_id'] = Variable<String>(assetId);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    return map;
  }

  OperationsTableCompanion toCompanion(bool nullToAbsent) {
    return OperationsTableCompanion(
      id: Value(id),
      type: Value(type),
      amount: Value(amount),
      date: Value(date),
      assetId: assetId == null && nullToAbsent
          ? const Value.absent()
          : Value(assetId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory OperationsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OperationsTableData(
      id: serializer.fromJson<String>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      amount: serializer.fromJson<int>(json['amount']),
      date: serializer.fromJson<DateTime>(json['date']),
      assetId: serializer.fromJson<String?>(json['assetId']),
      description: serializer.fromJson<String?>(json['description']),
      category: serializer.fromJson<String?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer.toJson<String>(type),
      'amount': serializer.toJson<int>(amount),
      'date': serializer.toJson<DateTime>(date),
      'assetId': serializer.toJson<String?>(assetId),
      'description': serializer.toJson<String?>(description),
      'category': serializer.toJson<String?>(category),
    };
  }

  OperationsTableData copyWith({
    String? id,
    String? type,
    int? amount,
    DateTime? date,
    Value<String?> assetId = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> category = const Value.absent(),
  }) => OperationsTableData(
    id: id ?? this.id,
    type: type ?? this.type,
    amount: amount ?? this.amount,
    date: date ?? this.date,
    assetId: assetId.present ? assetId.value : this.assetId,
    description: description.present ? description.value : this.description,
    category: category.present ? category.value : this.category,
  );
  OperationsTableData copyWithCompanion(OperationsTableCompanion data) {
    return OperationsTableData(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      amount: data.amount.present ? data.amount.value : this.amount,
      date: data.date.present ? data.date.value : this.date,
      assetId: data.assetId.present ? data.assetId.value : this.assetId,
      description: data.description.present
          ? data.description.value
          : this.description,
      category: data.category.present ? data.category.value : this.category,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OperationsTableData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('assetId: $assetId, ')
          ..write('description: $description, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, type, amount, date, assetId, description, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OperationsTableData &&
          other.id == this.id &&
          other.type == this.type &&
          other.amount == this.amount &&
          other.date == this.date &&
          other.assetId == this.assetId &&
          other.description == this.description &&
          other.category == this.category);
}

class OperationsTableCompanion extends UpdateCompanion<OperationsTableData> {
  final Value<String> id;
  final Value<String> type;
  final Value<int> amount;
  final Value<DateTime> date;
  final Value<String?> assetId;
  final Value<String?> description;
  final Value<String?> category;
  final Value<int> rowid;
  const OperationsTableCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.amount = const Value.absent(),
    this.date = const Value.absent(),
    this.assetId = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OperationsTableCompanion.insert({
    required String id,
    required String type,
    required int amount,
    required DateTime date,
    this.assetId = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       type = Value(type),
       amount = Value(amount),
       date = Value(date);
  static Insertable<OperationsTableData> custom({
    Expression<String>? id,
    Expression<String>? type,
    Expression<int>? amount,
    Expression<DateTime>? date,
    Expression<String>? assetId,
    Expression<String>? description,
    Expression<String>? category,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (amount != null) 'amount': amount,
      if (date != null) 'date': date,
      if (assetId != null) 'asset_id': assetId,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OperationsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? type,
    Value<int>? amount,
    Value<DateTime>? date,
    Value<String?>? assetId,
    Value<String?>? description,
    Value<String?>? category,
    Value<int>? rowid,
  }) {
    return OperationsTableCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      assetId: assetId ?? this.assetId,
      description: description ?? this.description,
      category: category ?? this.category,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (assetId.present) {
      map['asset_id'] = Variable<String>(assetId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OperationsTableCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('assetId: $assetId, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $OperationsTableTable operationsTable = $OperationsTableTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [operationsTable];
}

typedef $$OperationsTableTableCreateCompanionBuilder =
    OperationsTableCompanion Function({
      required String id,
      required String type,
      required int amount,
      required DateTime date,
      Value<String?> assetId,
      Value<String?> description,
      Value<String?> category,
      Value<int> rowid,
    });
typedef $$OperationsTableTableUpdateCompanionBuilder =
    OperationsTableCompanion Function({
      Value<String> id,
      Value<String> type,
      Value<int> amount,
      Value<DateTime> date,
      Value<String?> assetId,
      Value<String?> description,
      Value<String?> category,
      Value<int> rowid,
    });

class $$OperationsTableTableFilterComposer
    extends Composer<_$AppDatabase, $OperationsTableTable> {
  $$OperationsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assetId => $composableBuilder(
    column: $table.assetId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OperationsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $OperationsTableTable> {
  $$OperationsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assetId => $composableBuilder(
    column: $table.assetId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OperationsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $OperationsTableTable> {
  $$OperationsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get assetId =>
      $composableBuilder(column: $table.assetId, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);
}

class $$OperationsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OperationsTableTable,
          OperationsTableData,
          $$OperationsTableTableFilterComposer,
          $$OperationsTableTableOrderingComposer,
          $$OperationsTableTableAnnotationComposer,
          $$OperationsTableTableCreateCompanionBuilder,
          $$OperationsTableTableUpdateCompanionBuilder,
          (
            OperationsTableData,
            BaseReferences<
              _$AppDatabase,
              $OperationsTableTable,
              OperationsTableData
            >,
          ),
          OperationsTableData,
          PrefetchHooks Function()
        > {
  $$OperationsTableTableTableManager(
    _$AppDatabase db,
    $OperationsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OperationsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OperationsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OperationsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String?> assetId = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OperationsTableCompanion(
                id: id,
                type: type,
                amount: amount,
                date: date,
                assetId: assetId,
                description: description,
                category: category,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String type,
                required int amount,
                required DateTime date,
                Value<String?> assetId = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OperationsTableCompanion.insert(
                id: id,
                type: type,
                amount: amount,
                date: date,
                assetId: assetId,
                description: description,
                category: category,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OperationsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OperationsTableTable,
      OperationsTableData,
      $$OperationsTableTableFilterComposer,
      $$OperationsTableTableOrderingComposer,
      $$OperationsTableTableAnnotationComposer,
      $$OperationsTableTableCreateCompanionBuilder,
      $$OperationsTableTableUpdateCompanionBuilder,
      (
        OperationsTableData,
        BaseReferences<
          _$AppDatabase,
          $OperationsTableTable,
          OperationsTableData
        >,
      ),
      OperationsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$OperationsTableTableTableManager get operationsTable =>
      $$OperationsTableTableTableManager(_db, _db.operationsTable);
}
