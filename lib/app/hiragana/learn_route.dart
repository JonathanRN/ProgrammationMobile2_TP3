import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';
import 'package:tp3/app/hiragana/hiragana.dart';
import 'package:tp3/app/hiragana/hiragana_card.dart';

class LearnRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);
    final _keys = Hiraganas.keys.toList();
    final _values = Hiraganas.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(Hiraganas.length, (index) {
          return Center(
            child: HiraganaCard(
              _keys[index],
              _values[index],
            ),
          );
        }),
      ),
    );
  }
}
