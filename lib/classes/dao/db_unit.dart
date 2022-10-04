import 'dart:io';
import 'package:async/async.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tmag/classes/dao/day_unit.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/dao/time.dart';
import 'package:tmag/classes/dao/time_unit.dart';
import 'package:tmag/classes/dao/work_type.dart';
import 'package:tmag/classes/dao/work_unit.dart';

/// singleton unit of work
@singleton
class DbUnit {
  final _initDBMemoizer = AsyncMemoizer();
  Stream<String> getDbFolders() async* {
    var d1 = await getApplicationDocumentsDirectory();
    yield d1.path;
    var d2 = await getExternalDir();
    if (d2 != null) yield d2.path;
  }

  Future<Directory?> getExternalDir() async {
    try {
      return await getExternalStorageDirectory();
    } on UnimplementedError {
      return null;
    }
  }

  Future<String> findDbFile(Stream<String> directories) async {
    String? hiveDb;
    await for (var dir in directories) {
      hiveDb = "$dir/fl_db";

      if (await checkHive(hiveDb)) {
        break;
      }
    }
    if (hiveDb == null) {
      throw Exception("failed to find a place for hive db");
    }
    return hiveDb;
  }

  Future<bool> checkHive(String path) async {
    var exists = await Directory(path).exists();
    return exists;
  }

  Future<void> delete<TValue extends HiveObject>(TValue value) async {
    if (value.isInBox) {
      await value.delete();
    }
  }

  Future<TValue> save<TValue extends HiveObject>(
      Future<Box<TValue>> box, TValue value) async {
    if (value.isInBox) {
      await value.save();
    } else {
      (await box).add(value);
    }

    return value;
  }

  bool _initialized = false;

  /// initializes hive objects adapters
  Future init() async {
    if (!_initialized) {
      var hiveDb = await findDbFile(getDbFolders());
      _initDBMemoizer.runOnce(() {
        Hive.init(hiveDb);
        //flutter packages pub run build_runner build --delete-conflicting-outputs
        Hive.registerAdapter(ResourceAdapter());
        Hive.registerAdapter(TimeAdapter());
        Hive.registerAdapter(WorkTypeAdapter());
        Hive.registerAdapter(WorkUnitAdapter());
        Hive.registerAdapter(TimeUnitAdapter());
        Hive.registerAdapter(DayUnitAdapter());
        // Hive.registerAdapter(ConfigLogAdapter());
        // Hive.registerAdapter(ConfigNotifyAdapter());
      });
      _initialized = true;
    }
  }

  Future<Box<T>> openBox<T>(dynamic name) async {
    try {
      await init();
      var box2 = await Hive.openBox<T>(name);
      return box2;
    } catch (e, st) {
      print('failed to open box $name');
      print(st);
      rethrow;
    }
  }
}
