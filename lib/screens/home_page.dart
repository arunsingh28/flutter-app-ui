import 'package:flutter/material.dart';

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
      drawer: Drawer(),
    );
  }
}
