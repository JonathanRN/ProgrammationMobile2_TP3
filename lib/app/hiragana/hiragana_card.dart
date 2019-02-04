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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                _hiragana,
                style: TextStyle(fontSize: 110),
              ),
              Text(
                _trad,
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
