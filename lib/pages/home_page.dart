import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Drawer(
          child: Container(
        child: Text('Menu'),
      )),
    );
  }

  
  AppBar buildAppBar() {
    return AppBar(
      title: Text("Help on",
      ),
      backgroundColor: Color.fromARGB(952, 955, 986, 987),
    );
  }
}
