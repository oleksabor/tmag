import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/dao/time_unit.dart';
import 'package:tmag/classes/dao/work_type.dart';

part 'work_unit.g.dart';

/// single schedule unit (task)
@HiveType(typeId: HiveTypes.workUnit)
class WorkUnit extends DbHive {
  /// time and duration
  @HiveField(0)
  TimeUnit time;

  /// resource assigned
  @HiveField(1)
  Resource res;

  /// type of the task
  @HiveField(2)
  WorkType type;
  WorkUnit(this.time, this.res, this.type);
}
