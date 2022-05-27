import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:lab8_1105_bsse6/screen1.dart';
//import 'package:lab8_1105_bsse6/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var permissions; //variable for checking permission
  // var lon;
  // var lat;
  // void getCurrentPosition() async {
  //   // Task 2: Determine current permission
  //   permissions = await Geolocator.checkPermission();
  //   //Ask for permission only once
  //   if (permissions == LocationPermission.denied) {
  //     permissions = Geolocator.requestPermission();
  //     //If denied, print Permission Denied
  //     if (permissions == LocationPermission.denied) {
  //       print('Permission denied');
  //     }
  //   }
  //   //wait for position inorder to prevent a passing of a null value
  //   Position pos = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy
  //           .best); //best inorder to get within a range of 0-100m
  //   //output coordinates on debug console
  //   lat = pos.latitude;
  //   lon = pos.longitude;
  //   print(pos.latitude);
  //   print(pos.longitude);
  // }

  @override
  //Task 3: output coordinates on start
  // void initState() {
  //   super.initState();
  //   getCurrentPosition();
  // }

  Widget build(BuildContext context) {
    return MaterialApp(home: Screen1());
  }
}
