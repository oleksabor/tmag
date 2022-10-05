import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/day_unit.dart';
import 'package:tmag/classes/time_unit_model.dart';

@injectable
class DayUnitModel extends DbBoxModel<DayUnit> {
  @override
  String boxName = "dayUnitsBox";

  DayUnitModel(DbUnit db) : super(db);
}

class DayUnitModelFake extends DayUnitModel {
  DayUnitModelFake(DbUnit db) : super(db);

  List<DayUnit> items = [
    // first schedule with 4 hours
    DayUnit(DateTime(2022, 1, 1))
      ..times.addAll(TimeUnitModelFake.items.take(6)),
    // second schedule with 6 hours on the same day
    DayUnit(DateTime(2022, 1, 1))
      ..times.addAll(TimeUnitModelFake.items.skip(6).take(4)),
    // non working
    DayUnit(DateTime(2022, 1, 1))
      ..times.addAll(TimeUnitModelFake.items.skip(10).take(1)),
  ];
}
