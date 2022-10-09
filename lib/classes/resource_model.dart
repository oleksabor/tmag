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

  static List<Resource> items = [
    Resource()
      ..title = "worker1"
      ..hiveId = 1,
    Resource()
      ..title = "worker2"
      ..hiveId = 2,
    Resource()
      ..title = "worker3"
      ..hiveId = 3,
    Resource()
      ..title = "worker4"
      ..hiveId = 4,
    Resource()
      ..title = "worker5"
      ..hiveId = 5,
    Resource()
      ..title = "worker6"
      ..hiveId = 6,
    Resource()
      ..title = "worker7"
      ..hiveId = 7,
    Resource()
      ..title = "worker8"
      ..hiveId = 8,
  ];

  @override
  Future<List<Resource>> loadAll() async {
    return items;
  }
}
