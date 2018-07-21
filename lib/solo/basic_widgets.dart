import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              textDirection: TextDirection.ltr,
            ),
          ),
          Expanded(
              child: Center(
                child: Text(
                  'BasicWidgets',
                ),
              )
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {

  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(child: title),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}