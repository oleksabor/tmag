import 'package:injectable/injectable.dart';
import 'package:tmag/classes/dao/db_box_model.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/dao/resource.dart';

@injectable
class ResourceModel extends DbBoxModel<Resource> {
  @override
  String boxName = "resourcesBox";

  ResourceModel(DbUnit db) : super(db);
}

class ResourceModelFake extends ResourceModel {
  ResourceModelFake(DbUnit db) : super(db);

  List<Resource> items = [
    Resource()..title = "test1",
    Resource()..title = "test2",
    Resource()..title = "test3",
  ];

  @override
  Future<List<Resource>> loadAll() async {
    return items;
  }
}
