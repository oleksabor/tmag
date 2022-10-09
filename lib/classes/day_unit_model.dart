import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/day_unit.dart';
import 'package:tmag/classes/time_unit_model.dart';
import 'package:tmag/classes/work_unit_model.dart';

@injectable
class DayUnitModel extends DbBoxModel<DayUnit> {
  @override
  String boxName = "dayUnitsBox";

  DayUnitModel(DbUnit db) : super(db);
}

class DayUnitModelFake extends DayUnitModel {
  DayUnitModelFake(DbUnit db) : super(db);

//static DayUnit
  static List<DayUnit> items = [
    // first schedule with 4 hours
    DayUnit(DateTime(2022, 1, 1))
      ..items.addAll(WorkUnitModelFake.items.take(4)),
    // second schedule with 6 hours on the same day
    DayUnit(DateTime(2022, 1, 1))
      ..items.addAll(WorkUnitModelFake.items.skip(4).take(4)),
    // non working
    DayUnit(DateTime(2022, 1, 1))..items.add(WorkUnitModelFake.items.last),
  ];
}
