import 'package:flutter/material.dart';

class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好，Flutter',
        textDirection: TextDirection.ltr,
      ),
    );
  }

}