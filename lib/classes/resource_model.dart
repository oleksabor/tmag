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
    Resource()..title = "worker1",
    Resource()..title = "worker2",
    Resource()..title = "worker3",
    Resource()..title = "worker4",
    Resource()..title = "worker5",
    Resource()..title = "worker6",
    Resource()..title = "worker7",
    Resource()..title = "worker8",
  ];

  @override
  Future<List<Resource>> loadAll() async {
    return items;
  }
}
