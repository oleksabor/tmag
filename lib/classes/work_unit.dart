import 'package:tmag/classes/db_base.dart';
import 'package:tmag/classes/resource.dart';
import 'package:tmag/classes/time_unit.dart';
import 'package:tmag/classes/work_type.dart';

class WorkUnit extends DbBase {
  TimeUnit time;
  Resource res;
  WorkType type;
  WorkUnit(this.time, this.res, this.type);
}
