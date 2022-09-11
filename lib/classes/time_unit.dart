import 'package:tmag/classes/db_base.dart';

class TimeUnit extends DbBase {
  TimeUnit(this.from, this.duration, {int? id}) : super(id: id);
  Time from;
  Duration duration;
}

class Time {
  int hour;
  int minutes;
  Time(this.hour, this.minutes);
}
