import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                  width: 200,
                  child: Divider(
                    height: 28,
                    color: Colors.brown[900],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.brown[800],
                  child: const ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.yellowAccent,
                    ),
                    title: Text(
                      "yigit.ahmet@mens1s.com.tr",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.brown[800],
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.yellowAccent,
                    ),
                    title: Text(
                      "+90 545 999 99 99",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
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
