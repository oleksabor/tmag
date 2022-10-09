import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/time.dart';
import 'package:tmag/classes/dao/time_unit.dart';

@injectable
class TimeUnitModel extends DbBoxModel<TimeUnit> {
  @override
  String boxName = "timeUnitsBox";

  TimeUnitModel(DbUnit db) : super(db);
}

class TimeUnitModelFake extends TimeUnitModel {
  TimeUnitModelFake(DbUnit db) : super(db);

  static Duration h4 = const Duration(hours: 4);
  static Duration h6 = const Duration(hours: 6);
  static Duration h24 = const Duration(hours: 24);

  static List<TimeUnit> items = [
    // first schedule
    TimeUnit(Time(1, 0), h4)..hiveId = 1,
    TimeUnit(Time(5, 0), h4)..hiveId = 2,
    TimeUnit(Time(9, 0), h4)..hiveId = 3,
    TimeUnit(Time(13, 0), h4)..hiveId = 4,
    TimeUnit(Time(17, 0), h4)..hiveId = 5,
    TimeUnit(Time(21, 0), h4)..hiveId = 6,
    // second schedule
    TimeUnit(Time(3, 0), h6)..hiveId = 7,
    TimeUnit(Time(9, 0), h6)..hiveId = 8,
    TimeUnit(Time(15, 0), h6)..hiveId = 9,
    TimeUnit(Time(21, 0), h6)..hiveId = 10,
    // non working schedule
    TimeUnit(Time(19, 0), h24)..hiveId = 11,
  ];

  @override
  Future<List<TimeUnit>> loadAll() async {
    return items;
  }
}
