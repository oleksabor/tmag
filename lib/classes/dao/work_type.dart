import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/work_unit.dart';

part 'work_type.g.dart';

/// work type for [WorkUnit]
@HiveType(typeId: HiveTypes.workType)
class WorkType extends DbHive {
  @HiveField(0)
  String title = "";
}
