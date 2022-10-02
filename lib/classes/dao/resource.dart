import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/classes/dao/hive_types.dart';

part 'resource.g.dart';

/// schedule resource to be assigned per task
@HiveType(typeId: HiveTypes.resource)
class Resource extends DbHiveTitle {
  @HiveField(0)
  @override
  String title = "";

  @override
  String subTitle = "";
}
