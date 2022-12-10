import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  bool isLeft = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  isLeft = true;
                });
              },
              child: Container(
                width: 100,
                height: 200,
                color: isLeft ? Colors.blueAccent : Colors.blueGrey,
                child: isLeft ? Text("Left Holded") : Text("Left Leaved"),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isLeft = false;
                });
              },
              child: Container(
                width: 100,
                height: 200,
                color: !isLeft ? Colors.blueAccent : Colors.blueGrey,
                child: !isLeft ? Text("Right Holded") : Text("Right Leaved"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
