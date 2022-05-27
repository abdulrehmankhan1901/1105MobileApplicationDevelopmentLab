import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Question1
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text("Mobile App Development - Lab2"),
          backgroundColor: Colors.brown),
      body: Center(child: Text("Abdul Rehman Khan - 1105")),
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text("+"),
        tooltip: "This button is not pressable",
      ),
    ));
  }
}*/

//Question 2
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                  child: CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/download.jpg"),
                radius: 50,
              )),
              Container(
                child: Text(
                  "Abdul Rehman",
                  style: TextStyle(
                      fontFamily: 'ZenKurenaido-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                alignment: Alignment.center,
              ),
              Container(
                  child: Text(
                'Student',
                style: TextStyle(
                    fontFamily: 'Lato-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 3),
              )),
              Container(
                  child: Card(
                      child: ListTile(
                          leading: Icon(Icons.phone, size: 20),
                          title: Text("+9214584785214")))),
              Container(
                  child: Card(
                      child: ListTile(
                          leading: Icon(Icons.mail, size: 20),
                          title: Text("example@gmail.com"))))
            ])),
      ),
    ));
  }
}
