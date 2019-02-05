import 'package:flutter/material.dart';

class HiraganaCard extends StatelessWidget {
  final _hiragana;
  final _trad;

  HiraganaCard({hiragana = "", trad = ""})
      : _hiragana = hiragana,
        _trad = trad;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text(
                _hiragana,
                textScaleFactor: 9,
              ),
              Text(
                _trad,
                textScaleFactor: 1.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
