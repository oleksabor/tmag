import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/init_get.dart';
import 'package:tmag/classes/work_type_bloc.dart';
import 'package:tmag/classes/work_type_model.dart';
import 'package:tmag/views/crud_items_view.dart';

class WorkTypesView extends StatefulWidget {
  const WorkTypesView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WorkTypesCrudViewState();
  }

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const WorkTypesView());
  }
}

class WorkTypesCrudViewState extends CrudItemsView<WorkTypesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("types"),
        ),
        body: BlocProvider(
            create: (context) {
              var b =
                  WorkTypeBloc(RepositoryProvider.of<WorkTypeModel>(context));
              return b;
            },
            child: BlocBuilder<WorkTypeBloc, WorkTypeState>(
                builder: resourcesUI)));
  }

  Widget resourcesUI(BuildContext con, WorkTypeState st) {
    var model = RepositoryProvider.of<WorkTypeModel>(context);
    return items2UI(con, model.loadAll());
  }
}
