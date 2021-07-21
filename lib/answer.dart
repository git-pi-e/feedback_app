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
    return Center(
           child: SliderTheme(
             data: SliderTheme.of(context).copyWith(
               activeTrackColor: Colors.redAccent[400],
               inactiveTrackColor: Colors.redAccent[100],
               trackShape: RoundedRectSliderTrackShape(),
               trackHeight: 4.0,
               thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
               thumbColor: Colors.redAccent,
               overlayColor: Colors.red.withAlpha(32),
               overlayShape: RoundSliderOverlayShape(overlayRadius: 38.0),
               tickMarkShape: RoundSliderTickMarkShape(),
               activeTickMarkColor: Colors.red[700],
               inactiveTickMarkColor: Colors.red[200],
               valueIndicatorShape: PaddleSliderValueIndicatorShape(),
               valueIndicatorColor: Colors.redAccent,
               valueIndicatorTextStyle: TextStyle(
                 color: Colors.white,
               ),
             ),
             child: Slider(
              min: 1,
              max: 5,
              divisions: 4,
              value: sliderVal.toDouble(),
              label: '$sliderVal',
              onChanged: (value) {
                setSliderValue(value);
              },
             ),
           ),

    ); //RaisedButton
  }
}
