import 'package:flutter/material.dart';
import 'package:feedback_app/quiz.dart';
import 'package:feedback_app/result.dart';
import 'package:feedback_app/question.dart';

void main() {
  runApp(MaterialApp(
    home: MaterialApp(),
  ));
}

class FeedBack extends StatefulWidget {


  @override
  _MaterialAppState createState() => _MaterialAppState();
}

class _MaterialAppState extends State<MaterialApp> {

  //questions for da feedback
  final ques = const [
    {
      'que': 'How are you feelin\' today, bud?',
      'ratings': [
        {'rating': '1', 'score': 1},
        {'rating': '2', 'score': 2},
        {'rating': '3', 'score': 3},
        {'rating': '4', 'score': 4},
        {'rating': '5', 'score': 5},
      ],
    },
    {
      'que': 'How was food today?',
      'ratings': [
        {'rating': '1', 'score': 1},
        {'rating': '2', 'score': 2},
        {'rating': '3', 'score': 3},
        {'rating': '4', 'score': 4},
        {'rating': '5', 'score': 5},
      ],
    },
    {
      'que': 'How productive were you today?',
      'ratings': [
        {'rating': '1', 'score': 1},
        {'rating': '2', 'score': 2},
        {'rating': '3', 'score': 3},
        {'rating': '4', 'score': 4},
        {'rating': '5', 'score': 5},
      ],
    },
    {
      'que': 'How was your time at work?',
      'ratings': [
        {'rating': '1', 'score': 1},
        {'rating': '2', 'score': 2},
        {'rating': '3', 'score': 3},
        {'rating': '4', 'score': 4},
        {'rating': '5', 'score': 5},
      ],
    },
    {
      'que': 'How are people at home?',
      'ratings': [
        {'rating': '1', 'score': 1},
        {'rating': '2', 'score': 2},
        {'rating': '3', 'score': 3},
        {'rating': '4', 'score': 4},
        {'rating': '5', 'score': 5},
      ],
    },
    {
      'que': 'wtf bro, is that how you gonna ',
      'ratings': [
        {'rating': '1', 'score': 1},
        {'rating': '2', 'score': 2},
        {'rating': '3', 'score': 3},
        {'rating': '4', 'score': 4},
        {'rating': '5', 'score': 5},
      ],
    },
  ];

  var _scoreTotal = 0;
  var _index = 0;

  void _reset() {
    setState(() {
      _scoreTotal = 0;
      _index = 0;
    });
  }

  void feedbackResponse(int score) {
    _scoreTotal+=score;
    setState(() {
      _index += 1;
    });
    print(_index);
    if(_index < ques.length){
      print('Nexto Questio!');
    }else{
      print('That\'s all folks!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gib Feedback'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
        child: (_index < ques.length) ? Quiz(
          answerQuestion: feedbackResponse,
          questionIndex: _index,
          questions: ques,
        ) //Quiz
         : Result(_scoreTotal, _reset),
      ),
    );
  }
}

