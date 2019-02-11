import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/question.dart';

class AnswerButton extends StatefulWidget {
  var _possibleAnswer;
  var isPressed = false;
  Question _question;

  AnswerButton(value, question)
      : _possibleAnswer = value,
        _question = question;

  @override
  State<StatefulWidget> createState() {
    return _AnswerButtonState();
  }
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        textColor: widget.isPressed ? Colors.red : Colors.black,
        child: Text(
          widget._question.possibleAnswers[widget._possibleAnswer],
          textScaleFactor: 2,
        ),
        onPressed: () => isAnswerCorrect(),
      ),
    );
  }

  void isAnswerCorrect() {
    setState(() {
      if (widget._question.possibleAnswers[widget._possibleAnswer] ==
          widget._question.getAnswer()) {
        widget._question.createRandomQuestion();
      } else {
        widget.isPressed = true;
      }
    });
  }
}
