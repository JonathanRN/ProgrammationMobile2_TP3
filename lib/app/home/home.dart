import 'package:flutter/material.dart';
import 'package:tp3/app/hiragana/learn_route.dart';
import 'package:tp3/app/hiragana/practice_route.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  int _currentRouteIndex = 0;
  var routes = [
    new LearnRoute(),
    new PracticeRoute()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[_currentRouteIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentRouteIndex,
        onTap: (index) {
          setState(() {
            _currentRouteIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            title: new Text('Apprendre'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.create),
            title: new Text('Entraînement'),
          )
        ],
      )
    );
  }
  // Setting to true will force the tab to never be disposed. This could be dangerous.
  @override
  bool get wantKeepAlive => true;
}
