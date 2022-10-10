import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/template.dart';
import 'package:tmag/classes/dao/work_unit.dart';
import 'package:tmag/classes/work_unit_model.dart';

@injectable
class TemplateModel extends DbBoxModel<Template> {
  @override
  String boxName = "templateBox";

  TemplateModel(DbUnit db) : super(db);
}

class TemplateModelFake extends TemplateModel {
  TemplateModelFake(DbUnit db) : super(db);

  static List<WorkUnit> create(List<int> idxs) {
    return idxs.map((i) => WorkUnitModelFake.items[i]).toList();
  }

  static List<Template> items = [
    Template(create([0, 1, 2, 3]), title: "template 1"),
    Template(create([4, 5, 6, 7]), title: "template 2"),
    Template(create([8]), title: "template 2"),
  ];
}
