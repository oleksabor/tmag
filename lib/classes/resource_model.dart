import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_model.dart';
import 'package:tmag/classes/dao/resource.dart';

@injectable
class ResourceModel {
  final DbModel _db;

  final resourcesName = "resourcesBox";

  ResourceModel(this._db);

  late Future<Box<Resource>> resources = _db.openBox<Resource>(resourcesName);

  Future<List<Resource>> loadAll() async {
    return (await resources).values.toList();
  }

  Future<Resource> save(Resource value) async {
    return _db.save(resources, value);
  }

  /// flushes data
  Future commit() async {
    (await resources).flush();
  }
}
