import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.network(
              //     "https://ouch-cdn2.icons8.com/wRCTCTzmiqQDscR1DIElpWT4a7cb5NyPJYUVKgUx2oo/rs:fit:1216:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTky/Lzc5NWMyY2VlLWIx/MzAtNDMyOS1hZTdj/LTc2ZDY5MmVlMWNm/Ny5zdmc.png",
              //     fit: BoxFit.cover),
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Login $name",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[400]),
              ),
              // for padding
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (e) {
                        name = e;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          focusedBorder: new OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                          labelText: "Email/Username",
                          icon: Icon(Icons.mail)
                          // hintText: "Enter E-mail/Username"
                          ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          labelText: "Password",
                          icon: Icon(Icons.lock)
                          // hintText: "Enter E-mail/Username"
                          ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 300,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(4)),
                    )
                    // child: ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //       primary: Colors.blue[400],
                    //       minimumSize: Size(500, 60),
                    //       onSurface: Colors.grey,
                    //       // text color
                    //       onPrimary: Colors.white,
                    //       elevation: 7,
                    //       textStyle:
                    //           TextStyle(color: Colors.white, fontSize: 20)),
                    //   child: Text('Login'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
