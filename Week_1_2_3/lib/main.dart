import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        title: Text("Happy Hallowens"),
      ),
      body: Center(
        child: Image.asset("images/bg.jpg"),
        //Image.network(
        //  "https://www.history.com/.image/t_share/MTkzNDE4MTI5Mzk5ODgzMzMx/halloween-gettyimages-1424736925.jpg",
        //),
        //image: NetworkImage( // network constructor is available
        //    "https://www.history.com/.image/t_share/MTkzNDE4MTI5Mzk5ODgzMzMx/halloween-gettyimages-1424736925.jpg"),
        //),
      ),
    ),
  ));
}
