import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function selectValue;

  final int answerValue;
  Answer({required this.selectValue, required this.answerValue});

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int sliderVal = 1;

  void setSliderValue(double value) {
    setState(() {
      sliderVal = value.toInt();
    });
    widget.selectValue(sliderVal);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('$sliderVal'),
        Slider(
          min: 1,
          max: 5,
          divisions: 4,
          value: sliderVal.toDouble(),
          label: '$sliderVal',
          activeColor: Colors.redAccent,
          inactiveColor: Colors.grey,
          onChanged: (value) {
            setSliderValue(value);
          },
        ),
      ],
    ); //RaisedButton
  }
}
