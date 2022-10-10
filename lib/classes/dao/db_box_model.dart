import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_unit.dart';

/// base class with [DbUnit] and [Box] instances
abstract class DbBoxModel<T extends HiveObject> {
  final DbUnit _db;

  abstract String boxName;

  DbBoxModel(this._db);

  late Future<Box<T>> box = _db.openBox<T>(boxName);

  Future<List<T>> loadAll() async {
    return (await box).values.toList();
  }

  Future<T> save(T value) async {
    return _db.save(box, value);
  }

  Future<void> delete(T value) async {
    await _db.delete(value);
  }

  /// flushes data
  Future commit() async {
    (await box).flush();
  }
}
