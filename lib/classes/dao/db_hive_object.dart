import 'package:hive_flutter/hive_flutter.dart';

class DbHiveObject extends HiveObject {
  int? _okey;

  /// wrapper over [HiveObject.key]
  int get hiveId => _okey ?? key ?? -1;
  set hiveId(i) => _okey = i; // artificial setter

}

abstract class DbHiveTitle extends DbHiveObject {
  abstract String title;
  abstract String subTitle;
}
