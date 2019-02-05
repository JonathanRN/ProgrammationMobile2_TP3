import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';
import 'package:tp3/app/hiragana/question_card.dart';
import 'package:tp3/app/hiragana/answer_list.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class PracticeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);
    var question = Question();

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
      ),
      body: Column(
        children: <Widget>[
          QuestionCard(
            value: question.hiragana,
          ),
          AnswerList(
            question: question,
          ),
        ],
      ),
    );
  }
}
