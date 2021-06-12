import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      routes: {
        "/" : (context) => LoginPage(),
        "/login" : (context) => HomePage(),
      },
    );
  }
}
