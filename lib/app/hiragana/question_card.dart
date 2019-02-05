import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final _hiraganaCharacter;

  QuestionCard({value = ""})
      : _hiraganaCharacter = value;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                _hiraganaCharacter,
                textScaleFactor: 4,
              ),
            )),
      ),
    );
  }
}
