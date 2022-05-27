import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

//Question3
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          body: Container(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blue,
            child: Text("Enable"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          TextButton(onPressed: null, child: Text("Enable")),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.volume_up),
          )
        ]),
      )),
    ));
  }
}*/

//Question2
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.blue,
                  height: 100,
                ),
                flex: 1),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                color: Colors.yellow,
                height: 100,
              ),
              flex: 2,
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.blue,
                  height: 100,
                ),
                flex: 1),
          ]),
    )));
  }
}*/

//Question 1
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue,
            body: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Text("$dice"),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Random random = new Random();
                            dice = random.nextInt(6) + 1;
                          });
                        },
                        child: Image.asset("images/dice$dice.png"))
                  ],
                ))));
  }
}
