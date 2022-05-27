import 'package:flutter/material.dart';

void main() {
  //Question1
  /*runApp(MaterialApp(
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
  )));*/

  //Question 2
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("I Am Rick"),
      backgroundColor: Colors.red,
    ),
    backgroundColor: Colors.green,
    body: Center(child: Image(image: AssetImage("images/download.jpg"))),
  )));
}
