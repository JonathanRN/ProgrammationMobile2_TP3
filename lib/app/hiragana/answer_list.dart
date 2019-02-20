import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/question.dart';
import 'package:tp3/app/hiragana/answer_button.dart';

class AnswerList extends StatelessWidget {
  final Question _question;
  List<AnswerButton> _answerButtons;

  AnswerList(question) : _question = question {
    //BEN_CORRECTION : Devrait être initialisé avec une boucle.
    _answerButtons = [
      AnswerButton(0, _question),
      AnswerButton(1, _question),
      AnswerButton(2, _question)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _answerButtons,
      ),
    );
  }
}
