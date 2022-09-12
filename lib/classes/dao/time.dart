import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmag/classes/dao/db_base.dart';
import 'package:tmag/classes/dao/hive_types.dart';

part 'time.g.dart';

/// certain moment in time
@HiveType(typeId: HiveTypes.time)
class Time extends DbHive {
  @HiveField(0)
  int hour;

  @HiveField(1)
  int minutes;

  Time(this.hour, this.minutes);
}
