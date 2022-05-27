import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab8_1105_bsse6/locationscreen.dart';
import 'package:lab8_1105_bsse6/network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

var weatherdata;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
    networkhelper helper = networkhelper(Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?units=metric&lat=$lat&lon=$lon&appid=114922bfcf0309eb51a43eec8809aaf4'));

    weatherdata = await helper.getdata();
    print(weatherdata);
    //4. Pass to LoactionScreen
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherdata);
    }));

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
      appBar: AppBar(title: Center(child: Text('1105-Lab 9'))),
      //Task 1: determine and output the current position of device on button click
      body: Column(children: [
        //5. Display loading sign in build
        Center(
          child: SpinKitChasingDots(
            color: Colors.grey,
            size: 40,
          ),
        ),
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
                  context,
                  MaterialPageRoute(
                      builder: (context) => LocationScreen(
                            locationWeather: weatherdata,
                          )));
            },
            child: Text("Go to Screen 2")),
      ]),
    );
  }
}
