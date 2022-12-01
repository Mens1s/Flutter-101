import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          child: Transform(
            transform: Matrix4.rotationZ(-0.2),
            alignment: FractionalOffset.center,
            child: Container(
              width: 200,
              height: 125,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(16.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(45.0),
              //color: Colors.white,
              child: Transform(
                transform: Matrix4.rotationZ(0.2),
                alignment: FractionalOffset.center,
                child: Text("Mens1s created"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
