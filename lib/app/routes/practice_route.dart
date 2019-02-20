import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';
import 'package:tp3/app/hiragana/practice_widget.dart';
import 'package:tp3/app/hiragana/question.dart';

class PracticeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PracticeRouteState();
  }
}

class PracticeRouteState extends State<PracticeRoute> {
  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);
    var question = Question(this);

    //BEN_CORRECTION : L'application contient déjà un Scaffold. Il ne devrait pas
    //                 y en avoir 2.
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
      ),
      body: PracticeWidget(question),
    );
  }

  void refresh() {
    setState(() {
    });
  }
}
