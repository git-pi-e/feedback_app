import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  late Color resultColor;
  final Function resetHandler;
  late String resultText;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    if (resultScore>= 0 && resultScore <= 10) {
      resultText = 'We are sorry for your inconvenience';
      resultColor = Colors.red;
      print(resultScore);
    } else if (resultScore>= 11 && resultScore <= 20) {
      resultText = 'Hope we serve you better next time';
      resultColor = Colors.blue;
      print(resultScore);
    } else if (resultScore >= 21 && resultScore <= 30) {
      resultText = 'We hope you come back next time';
      resultColor = Colors.green;
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore' '$resultText',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: resultColor),
            textAlign: TextAlign.center,
          ), //Text
          TextButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            onPressed: resetHandler(),
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
