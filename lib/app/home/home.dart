import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';
import 'package:tp3/app/hiragana/hiragana.dart';
import 'package:tp3/app/hiragana/navigation_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);
    final _keys = Hiraganas.keys.toList();
    final _values = Hiraganas.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.title),
      ),
      bottomNavigationBar: new NavigationBar(),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(Hiraganas.length, (index) {
          return Center(
            child: Text(
              '${_keys[index]}',
              textScaleFactor: 4,
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}
