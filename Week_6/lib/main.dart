import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Give me Food!",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaList = [
    "Mercimek",
    "Tarhana",
    "Tavuksuyu",
    "Dugun",
    "Yogurtlu"
  ];
  List<String> yemekList = [
    "Karnıyarık",
    "Mantı",
    "Kuru Fasulye",
    "Icli kofte",
    "Izgara Balik"
  ];
  List<String> tatliList = [
    "Kadayif",
    "Baklava",
    "Sütlac",
    "Kazandibi",
    "Dondurma"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                // textButton animasyonu daha hoş :D
                onPressed: getRandom,
                child: Image.asset("assets/images/corba_$corbaNo.jpg"),
              ),
            ),
          ),
          Text(
            corbaList[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: getRandom,
                child: Image.asset("assets/images/yemek_$yemekNo.jpg"),
              ),
            ),
          ),
          Text(
            yemekList[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 2,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: getRandom,
                child: Image.asset("assets/images/tatli_$tatliNo.jpg"),
              ),
            ),
          ),
          Text(
            tatliList[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void getRandom() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }
}
