import 'package:flutter/material.dart';

class PaddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.all(10.0),
      child: Center(
        child: new Text(
            'hah',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
