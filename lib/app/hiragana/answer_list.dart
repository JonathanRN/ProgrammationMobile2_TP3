import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/hiragana.dart';
import 'package:tp3/app/hiragana/answer_button.dart';

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
  List<AnswerButton> _answerButtons;

  _AnswerListState(question) : _question = question {
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
