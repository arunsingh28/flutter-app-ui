import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), drawer: MyDrawer());
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        "Help on",
      ),
      backgroundColor: Color.fromARGB(952, 955, 986, 987),
    );
  }
}
