import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';
import 'package:hello/main.dart';
class LocationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  final wordPair = WordPair.random(); 
  return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          section(wordPair, Colors.limeAccent),
          section(wordPair, Colors.blue[400]),
          section(wordPair, Colors.cyanAccent),
        ],
        ));
  }
  Widget section(WordPair wordPair, Color color){
    return Container(
          decoration: BoxDecoration(
            color: color,
          ),
          child: Text(wordPair.asPascalCase),
          );
  }
}
class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context){
    final WordPair wordPair = WordPair.random();
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(title: Text("G-CHAT"),backgroundColor: Colors.blue),
      body: Center(
      child: Text(wordPair.asPascalCase),
      ),
      );
  }
}
Widget lists(){
  var list = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Visakhapatnam'),
        subtitle: Text('Weather is sunny'),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){}
      ),
      ListTile(
        leading: Icon(Icons.laptop),
        title: Text("Raj's pc"),
        subtitle: Text('connected'),
      ),
      ListTile(
        leading: Icon(Icons.phone_iphone),
        title: Text('Raj Phone'),
        subtitle: Text('connected'),
      )
    ],
  );
  return list;
}
