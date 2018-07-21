import 'package:flutter/material.dart';

//下级无状态控件
class StatelessCounter extends StatelessWidget {
  StatelessCounter({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text(
      'StatelessCounter count: $count',
      textDirection: TextDirection.ltr,
    );
  }

}

//上级控件，通过传递VoidCallback
class CounterIncrementor extends StatelessWidget {

  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
        child: Text(
          'CounterIncrementor',
          textDirection: TextDirection.ltr,
        ),
    );
  }

}

class StatefulCounterWithCallback extends StatefulWidget {
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
        StatelessCounter(
          count: _counter,
        ),
        CounterIncrementor(
          onPressed: _increment,
        )
      ],
    );
  }

  void _increment() {
    setState(() {
      ++_counter;
    });
  }
}