import 'package:flutter/material.dart';
import 'package:feedback_app/quiz.dart';
import 'package:feedback_app/result.dart';
import 'package:feedback_app/quesList.dart';

void main() {
  runApp(MaterialApp(
    home: Feedback(),
  ));
}

class Feedback extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  //questions for da feedback

  var _scoreTotal = 0;
  var _index = 0;

  void _reset() {
    setState(() {
      _scoreTotal = 0;
      _index = 0;
    });
  }

  void feedbackResponse(int score) {
    _scoreTotal += score;
    setState(() {
      _index += 1;
    });
    print(_scoreTotal);
    if (_index < ques.length) {
      print('Nexto Questio!');
    } else {
      print('That\'s all folks!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Gib Feedback UwU'),
        ),
        body : (_index < ques.length) 
        ? Quiz(ques: ques, answerQues: feedbackResponse, index: _index) 
        : Center(
          child:
            Result(_scoreTotal, _reset),

          ),
          ),
      );
    
  }
}
