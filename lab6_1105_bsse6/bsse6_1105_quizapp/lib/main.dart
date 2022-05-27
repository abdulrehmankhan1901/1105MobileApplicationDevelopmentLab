import 'package:flutter/material.dart';
import 'questionBank.dart';

Questionbank qbank = Questionbank();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> iList = [];
  void check(bool selectedAnswer) {
    setState(() {
      if (qbank.ended()) {
        qbank.reset();
        iList.clear();
      } else {
        if (qbank.getAnswer() == selectedAnswer) {
          iList.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          iList.add(Icon(Icons.close, color: Colors.red));
        }
        qbank.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Expanded(
      child: Scaffold(
        body: Container(
          //padding: EdgeInsets.all(20),
          color: Color.fromARGB(255, 44, 44, 44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Center(
                          child: Text(
                        qbank.getQuestion(),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      )))),
              Expanded(
                  child: Container(
                      color: Colors.green,
                      margin: EdgeInsets.all(20),
                      child: TextButton(
                          onPressed: () {
                            check(true);
                          },
                          child: Text("True",
                              style: TextStyle(color: Colors.white))))),
              Expanded(
                  child: Container(
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: TextButton(
                          onPressed: () {
                            check(false);
                          },
                          child: Text("False",
                              style: TextStyle(color: Colors.white))))),
              Row(
                children: iList,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
