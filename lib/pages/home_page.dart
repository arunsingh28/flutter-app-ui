import 'package:first_app/model/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/itemWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: ListView.builder(
          itemCount: CatelogModal.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatelogModal.items[index],
            );
          },
        ),
        drawer: MyDrawer());
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        "Help on",
      ),
    );
  }
}
