import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/time.dart';

part 'time_unit.g.dart';

/// schedule time [TimeUnit.from] and duration [TimeUnit.duration]
@HiveType(typeId: HiveTypes.timeUnit)
class TimeUnit extends DbHive {
  TimeUnit(this.from, this.duration);

  @HiveField(0)
  Time from;

  @HiveField(1)
  Duration duration;
}
