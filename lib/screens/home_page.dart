import 'package:flutter/material.dart';
import 'package:learning_app/widget/drawer.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      body: Center(
        child: Container(
          child: Text('asd'),
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
