import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';
import 'package:tp3/app/hiragana/question_card.dart';
import 'package:tp3/app/hiragana/answer_list.dart';
import 'package:tp3/app/hiragana/hiragana.dart';

class PracticeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PracticeRouteState();
  }
}

class _PracticeRouteState extends State<PracticeRoute> {
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
              value: question.possibleAnswers,
          ),
        ],
      ),
    );
  }
}
