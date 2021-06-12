import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
                "https://ouch-cdn2.icons8.com/wRCTCTzmiqQDscR1DIElpWT4a7cb5NyPJYUVKgUx2oo/rs:fit:1216:912/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTky/Lzc5NWMyY2VlLWIx/MzAtNDMyOS1hZTdj/LTc2ZDY5MmVlMWNm/Ny5zdmc.png",
                fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "Login to Arun's World",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[600]),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email/Username", icon: Icon(Icons.mail)
                        // hintText: "Enter E-mail/Username"
                        ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder:new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,),
                      ),
                      labelText: "Password", icon: Icon(Icons.lock)
                        // hintText: "Enter E-mail/Username"
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: ElevatedButton(
                      onPressed: (){
                        print('button press');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[300],
                        onSurface: Colors.grey,
                        // text color 
                        onPrimary: Colors.white,
                        elevation: 7,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        )
                      ),
                      child: Text('Login'),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
