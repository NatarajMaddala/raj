import 'dart:math';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:hello/location_detail.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
class ChatsScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: Material(
      color: Colors.brown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(luckynumber(), style: TextStyle(color: Colors.lime, fontSize: 30.0, fontFamily: 'NotoSansJP'),),
          Fig(),
          But(),
        ]
          ),
    ),
    );
    return scaffold;
  }
  String luckynumber(){
    var random = Random();
    int luck = random.nextInt(10);
    return "Lucky number is $luck";
  }
}
class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.teal,
        margin: EdgeInsets.only(left: 45.0, top: 45.0),
        child: Text("Fuck off"),
      ),
      );
  }

}
class Fig extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('image/Surface.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
  
}
class But extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        color: Colors.cyan[400],
        child: Text('Signout',
        style: TextStyle(
          fontFamily: 'NotoSansJP',
          fontWeight: FontWeight.w700
        ),),
        elevation: 6.0,
        onPressed: () {
          butfun(context);
        }
        ),
    );
  }
  void butfun(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Clicked Button"),
      content: Text("Run Successfully"),
      backgroundColor: Colors.teal,
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog
    );
  }
}
Widget cpage(int cindex){
  switch (cindex) {
    case 0: return lists();
    case 1: return LocationDetail();
    case 2: return ChatsScreen();
      
      break;
    default: return lists();
  }
}
/*FirebaseAuth.instance.signOut().then((value) {
            Navigator.of(context).pushReplacementNamed('/landingpage');
          }).catchError((e) {
            print(e);
          });*/