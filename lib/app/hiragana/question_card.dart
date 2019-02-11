import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final _hiraganaCharacter;

  QuestionCard({value = ""}) : _hiraganaCharacter = value;

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool isLandscape = orientation == Orientation.landscape;

    return Expanded(
        child: Card(
          child: Center(
            child: Text(
              _hiraganaCharacter,
              textScaleFactor: isLandscape ? 4 : 12,
            ),
          ),
        ),
    );
  }
}
