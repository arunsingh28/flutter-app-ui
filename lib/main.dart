<<<<<<< HEAD
=======
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/theme.dart';
>>>>>>> 844d1b552c140955d012e82f7457198466ce581a
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
      // remove debug banner
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
<<<<<<< HEAD
      theme: ThemeData(
          // primarySwatch: Colors.indigo,

          ),
=======
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.dartTheme(context),
      initialRoute: MyRoutes.homeRoute,
>>>>>>> 844d1b552c140955d012e82f7457198466ce581a
      // routing is provided by the MaterialApp widget
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
