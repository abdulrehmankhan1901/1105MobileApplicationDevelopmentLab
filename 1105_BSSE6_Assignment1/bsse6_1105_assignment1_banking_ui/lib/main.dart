import 'package:bsse6_1105_assignment1_banking_ui/addcard.dart';
import 'package:flutter/material.dart';
import 'addcard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: IconButton(
                    tooltip: 'Add New Card',
                    onPressed: () {
                      setState(() {
                        runApp(AddCard());
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
              ),
              Container(
                  alignment: Alignment.topCenter,
                  child: Text("All Cards",
                      style: TextStyle(
                          fontFamily: 'ZenKurenaido-Regular',
                          fontWeight: FontWeight.bold))),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 35, 0),
                child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.notifications, color: Colors.grey)),
              )
            ],
          ),
          CC(
              c1: Colors.black87,
              c2: Color.fromARGB(255, 94, 93, 93),
              s: "Sunny Aveiro",
              i: Image.asset('images/Visa_Inc._logo.png')),
          CC(
              c1: Colors.deepPurple,
              c2: Colors.deepPurpleAccent,
              s: 'Sunny Averio',
              i: Image.asset('images/Group 3.png')),
          CC(c1: Colors.teal, c2: Colors.tealAccent, s: "")
        ],
      ),
    )));
  }
}

// Credit Card (CC) function definition
Expanded CC(
    {required Color c1, required Color c2, required String s, Image? i}) {
  // c1: 1st color for the Linear Gradient, c2: 2nd color for the linear gradient
  // s: name to show before the image i, i: image to show at the bottom left of the card
  return Expanded(
    child: Container(
      //padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      margin: EdgeInsets.fromLTRB(35, 10, 35, 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [c1, c2]),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('images/Visa_Inc._logo.png'),
              alignment: Alignment.topRight,
              scale: 0.4,
              opacity: 0.1)),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
                child: Image.asset(
                  'images/NexusPay Logo.png',
                  //scale: 0.5,
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    'Dutch Bangla Bank',
                    style: TextStyle(
                        fontFamily: 'Kanit',
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 2),
                  ))
            ],
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text(
                    '**** **** **** 1690',
                    style: TextStyle(
                        fontFamily: 'Kanit',
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1.5),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  'Platinmum Plus',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                child: Text(
                  'Exp 01/22',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  '$s',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                child: i,
              )
            ],
          )
        ],
      ),
    ),
  );
}
