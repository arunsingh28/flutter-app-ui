import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_page.dart';
import 'package:learning_app/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      // home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red, primaryColor: Colors.amber),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
