import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'location_detail.dart';
import './screens/chats.dart';
import './screens/loginpage.dart';
void main() => runApp(Homestate());

/*class Login extends StatelessWidget {
@override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder> {
        '/landingpage' : (BuildContext context) => new Login(),
        '/homepage' : (BuildContext context)=> new Homestate()

      }
    );
  }
}*/

class Homestate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Home();
  }
}
class Home extends State<Homestate>{
  int cindex = 0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
      appBar: AppBar(title: Text("G-CHAT"),backgroundColor: Colors.deepOrange[900]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        tooltip: 'Create a new chat',
        backgroundColor: Colors.deepOrange[900],
      ),
      body: cpage(cindex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cindex,
        onTap:(int value){
          cindex = value;
          setState(() {
          
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chats')),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), title: Text('Online')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
    ),
  );
  }
}
class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => RandomWordsState();
}