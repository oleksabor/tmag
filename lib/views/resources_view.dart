import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/init_get.dart';
import 'package:tmag/classes/resource_bloc.dart';
import 'package:tmag/classes/resource_model.dart';
import 'package:tmag/views/crud_items_view.dart';
import 'package:tmag/views/list_items_presenter.dart';

class ResourcesView extends StatefulWidget {
  const ResourcesView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CrudViewState();
  }

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const ResourcesView());
  }
}

class CrudViewState extends CrudItemsView<ResourcesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("resources"),
        ),
        body: BlocProvider(
            create: (context) {
              var b =
                  ResourceBloc(RepositoryProvider.of<ResourceModel>(context));
              return b;
            },
            child: BlocBuilder<ResourceBloc, ResourceState>(
                builder: resourcesUI)));
  }

  var presentation = ListItemsPresenter();

  Widget resourcesUI(BuildContext con, ResourceState st) {
    var model = RepositoryProvider.of<ResourceModel>(context);
    return items2UI(con, model.loadAll());
  }
}
