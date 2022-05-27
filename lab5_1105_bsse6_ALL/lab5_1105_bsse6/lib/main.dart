import 'package:flutter/material.dart';
//import 'package:audioplayer/audioplayer.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final player = AudioPlayer();
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        button(n: 1, c: Colors.yellow),
        button(n: 2, c: Colors.black),
        button(n: 3, c: Colors.purple),
        button(n: 4, c: Colors.lightBlue),
        button(n: 5, c: Colors.orange),
        button(n: 6, c: Colors.red),
        button(n: 7, c: Colors.lightGreen),
      ],
    )));
  }

  Expanded button({required int n, required Color c}) {
    return Expanded(
      child: FlatButton(
          color: c,
          onPressed: () {
            setState(() {
              player.play('note$n.wav');
            });
          },
          child: Text("")),
    );
  }
}
