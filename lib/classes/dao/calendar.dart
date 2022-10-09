import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/day_unit.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/classes/dao/hive_types.dart';

part 'calendar.g.dart';

/// contains set of schedule [Calendar.days]
/// Like a period that may be re-used as template later
@HiveType(typeId: HiveTypes.calendar)
class Calendar extends DbHiveTitle {
  @HiveField(0)
  List<DayUnit> days = <DayUnit>[];

  @HiveField(1)
  @override
  String subTitle = "";

  @HiveField(2)
  @override
  String title = "";
}
