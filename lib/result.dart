import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  final List<Map<String, dynamic>> scores = [
    {
      'max': 10,
      'min': 1,
      'rText': 'We are sorry for your inconvenience',
      'rColor': Colors.redAccent,
    },
    {
      'max': 20,
      'min': 11,
      'rText': 'Hope we serve you better next time',
      'rColor': Colors.yellow[700],
    },
    {
      'max': 30,
      'min': 21,
      'rText': 'We hope you come back next time!',
      'rColor': Colors.green,
    },
  ];

  Map<String, dynamic> get finResults {
    var finalResult;
    scores.forEach((element) {
      if (resultScore >= element['min'] && resultScore <= element['max'])
        finalResult = element;
    });
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Score $resultScore:\n ",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: finResults['rColor']),
            textAlign: TextAlign.center,
          ), //Text
          SizedBox(
            height: 10.0,
          ),
          Text(
            finResults['rText'],
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          FloatingActionButton(
            child: Text('Gib Feedback Again'),
            onPressed: () => resetHandler,
          ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
