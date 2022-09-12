import 'package:hive_flutter/hive_flutter.dart';

class DbBase {
  int? id;
  String title = "";
  DbBase({this.id});
}

class DbHive extends HiveObject {
  int? _okey;
  // wrapper over HiveObject.key
  int get hiveId => _okey ?? key ?? -1;
  set hiveId(i) => _okey = i; // artificial setter

}
