import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int index;
  final Function answerQues;

  Quiz({
    required this.ques,
    required this.answerQues,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[index]['questionText'].toString(),
        ), //Question
        ...(ques[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQues(answer['score']), answer['text'].toString());
        }).toList()
      ],
    ); //Column
  }
}
