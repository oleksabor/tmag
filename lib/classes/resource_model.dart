import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_model.dart';
import 'package:tmag/classes/dao/resource.dart';

class ResourceModel {
  final DbModel _db;

  final resourcesName = "resourcesBox";

  ResourceModel(this._db);

  late Future<Box<Resource>> resources = _db.openBox<Resource>(resourcesName);

  Future<List<Resource>> loadAll() async {
    return (await resources).values.toList();
  }
}
