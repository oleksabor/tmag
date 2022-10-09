import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/work_unit.dart';
import 'package:tmag/classes/resource_model.dart';
import 'package:tmag/classes/time_unit_model.dart';
import 'package:tmag/classes/work_type_model.dart';

@injectable
class WorkUnitModel extends DbBoxModel<WorkUnit> {
  @override
  String boxName = "workUnitsBox";

  WorkUnitModel(DbUnit db) : super(db);
}

class WorkUnitModelFake extends WorkUnitModel {
  WorkUnitModelFake(DbUnit db) : super(db);

  static getWorkUnit(int timeIdx, int typeIdx, int unitIdx) => WorkUnit(
      TimeUnitModelFake.items[timeIdx], WorkTypeModelFake.items[typeIdx].hiveId,
      resId: ResourceModelFake.items[unitIdx].hiveId);

  static List<WorkUnit> items = [
    // first
    getWorkUnit(0, 0, 0),
    getWorkUnit(1, 0, 1),
    getWorkUnit(2, 0, 2),
    getWorkUnit(3, 0, 3),
    //second
    getWorkUnit(0, 1, 4),
    getWorkUnit(0, 1, 5),
    getWorkUnit(0, 1, 6),
    getWorkUnit(0, 1, 7),

    //vacation
    getWorkUnit(10, 6, 8),
  ];

  @override
  Future<List<WorkUnit>> loadAll() async {
    return items;
  }
}
