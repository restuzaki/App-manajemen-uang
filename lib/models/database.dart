import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:projek_uang/models/transaction.dart';  // Transactions table
import 'package:projek_uang/models/category.dart';  // Categories table

part 'database.g.dart';  // Correct part directive

@DriftDatabase(
  tables: [Categories, Transactions]  // Use the correct table names (plural)
)
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
