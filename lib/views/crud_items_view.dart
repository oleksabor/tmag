import 'package:flutter/material.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';
import 'package:tmag/views/list_items_presenter.dart';

abstract class CrudItemsView<T extends StatefulWidget> extends State<T> {
  var presentation = ListItemsPresenter();

  Widget items2UI(BuildContext con, Future<List<DbHiveTitle>> items) {
    return Column(children: [
      Row(children: [
        createIcon(Icons.add, "add", () {}),
        createIcon(Icons.edit, "edit", () {}),
        createIcon(Icons.delete, "delete", () {}),
      ]),
      Flexible(flex: 9, child: presentation.create(items))
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
