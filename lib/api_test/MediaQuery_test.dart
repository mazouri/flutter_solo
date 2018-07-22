import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // the size of the screen.
    var size = MediaQuery.of(context).size;
    print('the screen size is $size, the screen height is ${size.height}, and the width is ${size.width}');
    //the screen size is Size(411.4, 683.4), the screen height is 683.4285714285714, and the width is 411.42857142857144

    //the padding of the current screen, left top right bottom
    var padding = MediaQuery.of(context).padding;
    print(padding); //EdgeInsets(0.0, 24.0, 0.0, 0.0)


    return Center(
      child: Text(
        'MediaQueryTest',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
