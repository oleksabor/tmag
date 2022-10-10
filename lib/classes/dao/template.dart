import 'package:hive/hive.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/classes/dao/hive_types.dart';
import 'package:tmag/classes/dao/work_unit.dart';

part 'template.g.dart';

/// Template schedule may be used to quickly begin the new cycle.
/// May not have [WorkUnit.resId] value
@HiveType(typeId: HiveTypes.template)
class Template extends DbHiveTitle {
  @HiveField(0)
  List<WorkUnit> work;

  Template(this.work, {this.title = ""});

  @HiveField(1)
  @override
  String title = "";

  @HiveField(2)
  @override
  String subTitle = "";
}
