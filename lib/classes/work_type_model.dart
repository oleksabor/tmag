import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/work_type.dart';

@injectable
class WorkTypeModel extends DbBoxModel<WorkType> {
  @override
  String boxName = "workTypesBox";

  WorkTypeModel(DbUnit db) : super(db);
}

class WorkTypeModelFake extends WorkTypeModel {
  WorkTypeModelFake(DbUnit db) : super(db);

  static List<WorkType> items = [
    WorkType()..title = "пост1",
    WorkType()..title = "пост2",
    WorkType()..title = "пост3",
    WorkType()..title = "днівальний4",
    WorkType()..title = "днівальний5",
    WorkType()
      ..title = "звільнення1"
      ..isWorking = false,
    WorkType()
      ..title = "звільнення2"
      ..isWorking = false,
    WorkType()
      ..title = "звільнення3"
      ..isWorking = false,
  ];

  @override
  Future<List<WorkType>> loadAll() async {
    return items;
  }
}
