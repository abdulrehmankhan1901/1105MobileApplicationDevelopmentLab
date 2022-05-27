import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: mark()));

class mark extends StatelessWidget {
  const mark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Color.fromARGB(255, 1, 55, 99),
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {
                          int rnd = Random().nextInt(4) + 1;
                          print("I got clicked.");
                          print('Random: $rnd');
                        },
                        child: Image.asset('images/ball1.png')),
                  ]),
            )));
  }
}
