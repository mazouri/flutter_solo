import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget containerDemo1 = new Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
        border: new Border.all(width: 10.0, color: Colors.red),
        color: Colors.grey,
        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
      ),
      width: 100.0,
      margin: EdgeInsets.only(left: 8.0, top: 15.0, bottom: 100.0),
      transform: Matrix4.rotationZ(0.3),
    );

    Widget containerDemo2 =  new Center(
       child: new Container(
         margin: const EdgeInsets.all(10.0),
         color: const Color(0xFF00FF00),
         width: 48.0,
         height: 48.0,
       ),
     );

    Widget containerDemo3 = new Container(
      constraints: new BoxConstraints.expand(
        height:Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
      ),
      decoration: new BoxDecoration(
        border: new Border.all(width: 2.0, color: Colors.red),
        color: Colors.grey,
        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        image: new DecorationImage(
          image: new NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
          centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      child: new Text('Hello World',
            style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
            textDirection: TextDirection.ltr,
      ),
//    foregroundDecoration: new BoxDecoration(
//         image: new DecorationImage(
//           image: new NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
//           centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//         ),
//       ),
      transform: new Matrix4.rotationZ(0.3),
    );
    return containerDemo3;
  }
}
