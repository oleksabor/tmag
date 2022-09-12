import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';

part 'resource.g.dart';

/// schedule resource to be assigned per task
@HiveType(typeId: HiveTypes.resource)
class Resource extends DbHive {
  @HiveField(0)
  String title = "";
}
