import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmag/classes/dao/resource.dart';
import 'package:tmag/classes/init_get.dart';
import 'package:tmag/classes/work_type_bloc.dart';
import 'package:tmag/classes/work_type_model.dart';
import 'package:tmag/views/list_items_presenter.dart';

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

class WorkTypesCrudViewState extends State<WorkTypesView> {
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

  var presentation = ListItemsPresenter();

  Widget resourcesUI(BuildContext con, WorkTypeState st) {
    var model = RepositoryProvider.of<WorkTypeModel>(context);
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
