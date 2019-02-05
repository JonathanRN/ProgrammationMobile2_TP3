import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class AnswerList extends StatelessWidget {
  Question _question;

  AnswerList({question}) : _question = question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FlatButton(
          child: Text(
            _question.possibleAnswers[0],
            textScaleFactor: 2,
          ),
          onPressed: () {

          },
        ),
        FlatButton(
          child: Text(
            _question.possibleAnswers[0],
            textScaleFactor: 2,
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Text(
            _question.possibleAnswers[0],
            textScaleFactor: 2,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
