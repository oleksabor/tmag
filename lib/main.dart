import 'package:flutter/material.dart';
import 'package:tmag/app.dart';
import 'package:tmag/classes/dao/db_unit.dart';
import 'package:tmag/classes/init_get.dart';
import 'package:tmag/classes/resource_model.dart';
import 'package:tmag/classes/work_type_model.dart';

void main() {
  configureDependencies();
  var dbu = DbUnit();
  runApp(App(
    resourcesRepository: ResourceModelFake(dbu),
    workTypesRepository: WorkTypeModelFake(dbu),
  ));
}
