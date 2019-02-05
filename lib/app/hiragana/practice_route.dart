import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/question_card.dart';
import 'package:tp3/app/hiragana/answer_list.dart';

class PracticeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PracticeRouteState();
  }
}

class _PracticeRouteState extends State<PracticeRoute> {
  List<String> _possibleAnswers = ["tri","ste","rie"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Column(
        children: <Widget>[
          QuestionCard(
            value: "5",
          ),
          AnswerList(value: _possibleAnswers,)
        ],
      ),
    );
  }
}
