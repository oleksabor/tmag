import 'package:flutter/material.dart';
import 'package:tmag/classes/dao/db_hive_object.dart';

class ListItemsPresenter {
  Widget create(Future<List<DbHiveTitle>> items) {
    return FutureBuilder<List<DbHiveTitle>>(
        future: items,
        builder: (c, snapshot) => snapshot.hasData
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(10.0),
                itemCount: snapshot.data!.length,
                itemBuilder: (ctx, i) {
                  return createItem(snapshot.data![i]);
                })
            : CircularProgressIndicator());
  }

  Widget createItem(DbHiveTitle o) {
    return ListTile(
      title: Text(o.title),
      subtitle: Text(o.subTitle),
      // trailing: IconButton(
      //   onPressed: () {
      //     workItemAdd(ctx, i);
      //   },
      //   color: Theme.of(context).iconTheme.color,
      //   icon: const Icon(Icons.add),
      // )
    );
  }


      //     return GestureDetector(
      //       onLongPress: () =>
      //           kindPopup.show(ctx, items[i], kindPopup.tapPosition),
      //       onTapDown: kindPopup.storePosition,
      //       onTap: () => workItemsView(ctx, items[i]),
      //       child: _buildRow(ctx, items[i]));
      // },

}
