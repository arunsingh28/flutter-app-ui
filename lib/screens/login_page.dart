import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            filterQuality: FilterQuality.low,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: size.height * .2,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
