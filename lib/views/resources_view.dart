import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/init_get.dart';
import 'package:tmag/classes/resource_bloc.dart';
import 'package:tmag/classes/resource_model.dart';
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

class CrudViewState extends State<ResourcesView> {
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

  Widget resourcesUI(BuildContext con, ResourceState st) {
    var presentation = ListItemsPresenter();
    var model = RepositoryProvider.of<ResourceModel>(context);
    return Column(children: [
      Row(children: [
        createIcon(Icons.add, "add", () {}),
        createIcon(Icons.edit, "edit", () {}),
        createIcon(Icons.delete, "delete", () {}),
      ]),
      Flexible(flex: 9, child: presentation.create(model.loadAll()))
    ]);
  }

  Widget createIcon(
      IconData icon, String semanticLabel, void Function() onPressed) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: Icon(
        semanticLabel: semanticLabel,
        icon,
        //color: Theme.of(context).secondaryHeaderColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
      color: Theme.of(context).iconTheme.color,
    );
  }
}
