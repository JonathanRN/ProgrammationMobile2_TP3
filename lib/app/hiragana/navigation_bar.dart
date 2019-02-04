import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.book),
          title: new Text('Apprendre'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.create),
          title: new Text('Entraînement'),
        )
      ],
    );
  }
}
