import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/question_card.dart';
import 'package:tp3/app/hiragana/answer_list.dart';

class PracticeWidget extends StatelessWidget {
  var question;

  PracticeWidget(question) {
    this.question = question;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QuestionCard(
          value: question.hiragana,
        ),
        AnswerList(
          question,
        ),
      ],
    );
  }
}
