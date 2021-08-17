import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader
            (accountName: Text('Arun Singh'),
            accountEmail: Text('arunsingh28aug.as@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/48112517?v=4'),
            ),
            ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person,color: Colors.white,),
              title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.gear_alt,color: Colors.white,),
              title: Text('Services',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.back,color: Colors.white,),
              title: Text('Logout',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            
          ],
        ),
      )
    );
  }
}