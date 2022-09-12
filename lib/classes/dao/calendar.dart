import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/day_unit.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';

part 'calendar.g.dart';

/// contains set of schedule [Calendar.days]
@HiveType(typeId: HiveTypes.calendar)
class Calendar extends DbHive {
  @HiveField(0)
  List<DayUnit> days = <DayUnit>[];
}
