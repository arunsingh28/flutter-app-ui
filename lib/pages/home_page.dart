import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    print(context);
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Drawer(
        child: Container(
          child: Text('Menu'),
        )
      ),
    );
  }

  @override
  AppBar buildAppBar() {
    return AppBar(
      title: Text("Help on"),
      
    );
  }
}