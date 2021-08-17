import 'package:flutter/material.dart';
import 'package:learning_app/models/catalog.dart';
import 'package:learning_app/widget/drawer.dart';
import 'package:learning_app/widget/item_widget.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            itemCount: Catalog.item.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: Catalog.item[index]);
            }),
      ),
    );
  }
}
