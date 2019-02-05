import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class AnswerList extends StatelessWidget {
  Question _question;

  AnswerList({question}) : _question = question;

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
                _question.possibleAnswers[0],
                textScaleFactor: 2,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                _question.possibleAnswers[1],
                textScaleFactor: 2,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                _question.possibleAnswers[2],
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
