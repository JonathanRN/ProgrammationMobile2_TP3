import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  List<String> _possibleAnswers;

  AnswerList({value = ""}) : _possibleAnswers = value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FlatButton(
          child: Text(
            _possibleAnswers.elementAt(0),
            textScaleFactor: 2,
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Text(
            _possibleAnswers.elementAt(1),
            textScaleFactor: 2,
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Text(
            _possibleAnswers.elementAt(2),
            textScaleFactor: 2,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
