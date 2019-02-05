import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  List<String> _possibleAnswers;

  AnswerList({value = ""}) : _possibleAnswers = value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Text(
                _possibleAnswers.elementAt(0),
                textScaleFactor: 2,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                _possibleAnswers.elementAt(1),
                textScaleFactor: 2,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                _possibleAnswers.elementAt(2),
                textScaleFactor: 2,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
