import 'package:tmag/classes/db_base.dart';
import 'package:tmag/classes/time_unit.dart';

class DayUnit extends DbBase {
  List<TimeUnit> times = <TimeUnit>[];
  DayUnit({int? id}) : super(id: id);
}
