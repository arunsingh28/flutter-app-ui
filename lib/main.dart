import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app/screens/home_page.dart';
import 'package:learning_app/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        // primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // routing is provided by the MaterialApp widget
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
