import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/time_unit.dart';

part 'day_unit.g.dart';

/// contains working time schedule [DayUnit.times] per [DayUnit.day]
@HiveType(typeId: HiveTypes.dayUnit)
class DayUnit extends DbHive {
  @HiveField(0)
  List<TimeUnit> times = <TimeUnit>[];
  @HiveField(1)
  DateTime day;
  DayUnit(this.day);
}
