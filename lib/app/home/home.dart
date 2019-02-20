import 'package:flutter/material.dart';
import 'package:tp3/util/strings.dart';
import 'package:tp3/app/routes/learn_route.dart';
import 'package:tp3/app/routes/practice_route.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentRouteIndex = 0;
  //BEN_CORRECTION : Routes devrait être private.
  var routes = [LearnRoute(), PracticeRoute()];

  @override
  Widget build(BuildContext context) {
    var strings = Strings.of(context);
    return Scaffold(
      body: IndexedStack(
        children: routes,
        index: _currentRouteIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentRouteIndex,
        onTap: (index) {
          //BEN_REVIEW : Éviter les lambdas lorsque possible.
          setState(() {
            _currentRouteIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            title: new Text(strings.learn),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.create),
            title: new Text(strings.train),
          )
        ],
      ),
    );
  }
}
