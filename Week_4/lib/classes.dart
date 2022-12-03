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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // center start, end stretch girilidiği anda diğerlerinin width ine baskın gelir
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //MainAxisAlignment.spaceEvenly, // start, center, end, spaceXXXXX
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                color: Colors.white,
                //width: 200,
                height: 125,
                child: Text("First Container"),
              ),
              const SizedBox(
                height: 50,
                width: 20,
              ),
              Container(
                color: Colors.red,
                //width: 200,
                height: 125,
                child: Text("Second Container"),
              ),
              const SizedBox(
                height: 50,
                width: 20,
              ),
              Container(
                color: Colors.blueAccent,
                //width: 200,
                height: 125,
                child: Text("Third Container"),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  //width: double.infinity,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black26,
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

// before using card title

class MyAppi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(fontFamily: "NerkoOne"),
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('assets/images/coffe.jpeg'),
                ),
                Text(
                  "Flutter Bucks",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
                Text(
                  "Drink for Coding",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown[900],
                  ),
                ), //:)
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.brown[800],
                  child: Row(
                    children: const <Widget>[
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "yigit.ahmet@mens1s.com.tr",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.brown[800],
                  child: Row(
                    children: const <Widget>[
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "+90 545 999 99 99",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
