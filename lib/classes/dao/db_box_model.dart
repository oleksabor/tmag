import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_unit.dart';

/// base class with [DbUnit] and [Box] instances
abstract class DbBoxModel<T extends HiveObject> {
  final DbUnit _db;

  abstract String boxName;

  DbBoxModel(this._db);

  late Future<Box<T>> resources = _db.openBox<T>(boxName);

  Future<List<T>> loadAll() async {
    return (await resources).values.toList();
  }

  Future<T> save(T value) async {
    return _db.save(resources, value);
  }

  Future<void> delete(T value) async {
    await _db.delete(value);
  }

  /// flushes data
  Future commit() async {
    (await resources).flush();
  }
}
