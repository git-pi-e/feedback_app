import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<String> ques;
  final int index;
  final Function answerQues;
  static const int initial = 3;

  Quiz({
    required this.ques,
    required this.answerQues,
    required this.index,
  });

  int currentFeedbackValue = 1;

  void setFeedbackValue(int feedbackValue) {
    currentFeedbackValue = feedbackValue;
    print(currentFeedbackValue);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(ques[index].toString()),
            SizedBox(
              height: 10,
            ),
            Answer(
              answerValue: initial,
              selectValue: setFeedbackValue,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () => answerQues(currentFeedbackValue),
            ),
          ],
        ),
      ),
    ); //Column
  }
}
