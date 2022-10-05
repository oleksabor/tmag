import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/work_unit.dart';

part 'work_type.g.dart';

/// work type for [WorkUnit]
@HiveType(typeId: HiveTypes.workType)
class WorkType extends DbHiveObject {
  @HiveField(0)
  String title = "";

  @HiveField(1)
  bool isWorking = true;
}
