import 'package:flutter/material.dart';
import 'package:learning_app/widget/drawer.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      drawer:MyDrawer(),
      body: Column(
        children:[ 
          Container(
          child: Text('asd'),
          ),
          
        ]
      ),
    );
  }
}
