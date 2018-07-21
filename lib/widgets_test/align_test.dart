
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlignApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const demoPlugin = const MethodChannel('demo.plugin');

    return Align(
        alignment: const Alignment(1.0, 0.5),
        widthFactor: 2.0,
        heightFactor: 2.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: const Text('启动原生页面', textDirection: TextDirection.ltr,),
              onPressed: () {
                // Perform some action
                demoPlugin.invokeMethod('interaction');
              },
            ),
          ],
        ),
    );
  }

}