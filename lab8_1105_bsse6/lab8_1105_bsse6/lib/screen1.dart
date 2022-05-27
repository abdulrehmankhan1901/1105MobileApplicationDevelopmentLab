import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8_1105_bsse6/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var permissions; //variable for checking permission
  var lon;
  var lat;
  void getCurrentPosition() async {
    // Task 2: Determine current permission
    permissions = await Geolocator.checkPermission();
    //Ask for permission only once
    if (permissions == LocationPermission.denied) {
      permissions = Geolocator.requestPermission();
      //If denied, print Permission Denied
      if (permissions == LocationPermission.denied) {
        print('Permission denied');
      }
    }
    //wait for position inorder to prevent a passing of a null value
    Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy
            .best); //best inorder to get within a range of 0-100m
    //output coordinates on debug console
    lat = pos.latitude;
    lon = pos.longitude;
    print(pos.latitude);
    print(pos.longitude);
  }

  @override
  //Task 3: output coordinates on start
  void initState() {
    super.initState();
    getCurrentPosition();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('1105-Lab 8-Task 1, 2, and 3'))),
      //Task 1: determine and output the current position of device on button click
      body: Column(children: [
        TextButton(
          onPressed: () {
            setState(() {
              getCurrentPosition();
            });
          },
          child: Text("Get Location"),
        ),
        Text('$lon'),
        Text('$lat'),
        FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen2()));
            },
            child: Text("Go to Screen 2")),
      ]),
    );
  }
}
