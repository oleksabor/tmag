import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/work_unit.dart';

part 'work_type.g.dart';

/// work type for [WorkUnit]
@HiveType(typeId: HiveTypes.workType)
class WorkType extends DbHiveTitle {
  @HiveField(0)
  @override
  String title = "";

  @HiveField(1)
  bool isWorking = true;

  @HiveField(2)
  @override
  String subTitle = "";
}
