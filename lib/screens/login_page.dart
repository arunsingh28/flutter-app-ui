import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // controller for input
  final username = TextEditingController();
  final password = TextEditingController();

  bool changeBtn = false;
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  loginHandler()async{
     if(_formKey.currentState.validate()){
       setState(() {
        changeBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
     }
  }

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
            height: size.height * .1,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "username can not empty";
                      } else if (value.length < 6) {
                        return "min length is 6";
                      }
                      return null;
                    },
                    controller: username,
                    decoration: InputDecoration(
                      hintText: 'Enter Username/email',
                      labelText: 'Username/email'
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "password can not empty";
                      }else if (value.length < 6) {
                        return "min length is 6";
                      }
                      return null;
                    },
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password'
                    ),
                  ),
                  SizedBox(
                    height: size.height * .04,
                  ),
                  // animated button from container
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(changeBtn ? 40 : 4),
                    child: InkWell(
                        onTap: ()=>loginHandler(),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: changeBtn ? 40 : 42,
                          width: changeBtn ? 50 : 150,
                          alignment: Alignment.center,
                          child: changeBtn
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                        )),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
