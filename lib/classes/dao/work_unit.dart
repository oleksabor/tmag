import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/dao/time_unit.dart';
import 'package:tmag/classes/dao/work_type.dart';

part 'work_unit.g.dart';

/// single schedule unit (task)
@HiveType(typeId: HiveTypes.workUnit)
class WorkUnit extends DbHiveObject {
  /// time and duration
  @HiveField(0)
  TimeUnit time;

  /// resource assigned [Resource]
  @HiveField(1)
  int? resId;

  /// type of the task [WorkType]
  @HiveField(2)
  int typeId;

  WorkUnit(this.time, this.typeId, {this.resId});
}
