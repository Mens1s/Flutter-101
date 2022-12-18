import 'package:flutter/material.dart';
import 'package:week8/constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> choices = [];
  Map<String, bool> questions = {
    "Titanic gelmiş geçmiş en büyük gemidir": false,
    "Dünyadaki tavuk sayısı insan sayısından fazladır": true,
    "Kelebeklerin ömrü bir gündür": false,
    "Dünya düzdür": false,
    "Kaju fıstığı aslında bir meyvenin sapıdır": true,
    "Fatih Sultan Mehmet hiç patates yememiştir": true,
    "Fransızlar 80 demek için, 4 - 20 der": true,
  };
  int qIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.keys.elementAt(qIdx),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 3,
          spacing: 3,
          children: choices,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
                          ),
                          child: const Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              if (qIdx != questions.length - 1) {
                                if (questions.values.elementAt(qIdx))
                                  choices.add(falIcon);
                                else
                                  choices.add(corrIcon);
                                if (qIdx < questions.length - 1) qIdx++;
                              }
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
                          ),
                          child: const Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            setState(() {
                              if (qIdx != questions.length - 1) {
                                if (questions.values.elementAt(qIdx))
                                  choices.add(corrIcon);
                                else
                                  choices.add(falIcon);
                                if (qIdx < questions.length - 1) qIdx++;
                              }
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
