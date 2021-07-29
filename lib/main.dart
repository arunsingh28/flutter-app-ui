import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.dartTheme(context),
      initialRoute: MyRoutes.homeRoute,
      // routing is provided by the MaterialApp widget
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
