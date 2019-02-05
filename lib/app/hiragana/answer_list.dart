import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class AnswerList extends StatefulWidget {
  final Question _question;

  const AnswerList(question) : _question = question;

  @override
  State<StatefulWidget> createState() {
    return _AnswerListState(_question);
  }
}

class _AnswerListState extends State<AnswerList> {
  final Question _question;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;

  _AnswerListState(question) : _question = question;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              textColor: isPressed1 ? Colors.red : Colors.black,
              child: Text(
                _question.possibleAnswers[0],
                textScaleFactor: 2,
              ),
              onPressed: () => isAnswerCorrect(0),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                _question.possibleAnswers[1],
                textScaleFactor: 2,
              ),
              onPressed: () => isAnswerCorrect(1),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                _question.possibleAnswers[2],
                textScaleFactor: 2,
              ),
              onPressed: () => isAnswerCorrect(2),
            ),
          ),
        ],
      ),
    );
  }

  void isAnswerCorrect(int index) {
    setState(() {
      if (_question.possibleAnswers[index] == _question.getAnswer()) {
        _question.createRandomQuestion();
      }
      else {
        if (index == 1) {
          isPressed1 = true;
        } else if(index == 2) {
          isPressed2 = true;
        }
        else {
          isPressed3 = true;
        }
      }
    });
  }
}
