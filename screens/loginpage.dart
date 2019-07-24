/*import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hello/services/usermanagement.dart';
import 'package:flutter/widgets.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("G-CHAT"),backgroundColor: Colors.deepOrange[900]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) {
                setState(() {
                 _email = value; 
                });
              }
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (value) {
                setState(() {
                 _password = value; 
                });
              },
              obscureText: true,
            ),
            RaisedButton(
              child: Text('Login', style: TextStyle(fontFamily: 'NotoSansJP',fontWeight: FontWeight.w700),),
              elevation: 6.0,
              color: Colors.deepOrange[900],
              onPressed: (){
                FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: _email,
                  password: _password
                ).then((FirebaseUser user) {
                Navigator.of(context).pushReplacementNamed('/homepage');
                }).catchError((e) {
                  print(e);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}*/