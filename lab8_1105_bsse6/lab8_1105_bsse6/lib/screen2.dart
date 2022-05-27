import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
    print('Second Screen is loaded');
  }

  void Dispose() {
    print("Screen Dismissed");
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
        child: FlatButton(
            onPressed: () {
              Dispose();
              Navigator.pop(context);
            },
            child: Text("Dismiss Screen")));
  }
}
