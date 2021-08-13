import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int _day = 10;
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$_day'),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _day += 1;
                      });
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        onSurface: Colors.red,
                        backgroundColor: Colors.red,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
                    child: Text('Increse'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
