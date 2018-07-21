import 'package:flutter/material.dart';

class StatefulCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<StatefulWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        RaisedButton(
          onPressed: _increment,
          child: Text(
            'StatefulCounter',
            textDirection: TextDirection.ltr,
          ),
        ),
        Text(
          'Count: $_counter',
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }

  void _increment() {
    setState(() {
      _counter ++;
    });
  }
}