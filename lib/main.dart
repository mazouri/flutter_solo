import 'package:flutter/material.dart';
import 'package:flutter_solo/api_test/MediaQuery_test.dart';
import 'package:flutter_solo/my_app.dart';
import 'package:flutter_solo/project/planets/ui/home/home_page.dart';
import 'package:flutter_solo/solo/basic_widgets.dart';
import 'package:flutter_solo/solo/gestures.dart';
import 'package:flutter_solo/solo/hello_flutter.dart';
import 'package:flutter_solo/solo/material_widgets.dart';
import 'package:flutter_solo/solo/shopping_app.dart';
import 'package:flutter_solo/solo/stateful_widget_counter.dart';
import 'package:flutter_solo/solo/stateful_widget_counter_with_callback.dart';
import 'package:flutter_solo/little_project/randow_word_test.dart';


//void main() => runApp(new MyApp());

//void main() => runApp(Center(
//  child: Text(
//    '你好，Flutter',
//    textDirection: TextDirection.ltr,
//  ),
//));

//void main() => runApp(new HelloFlutter());
//void main() => runApp(MaterialApp(
//  title: 'My App',
//  home: BasicWidgets(),
//));

//void main() => runApp(
//  new MaterialApp(
//    title: 'Use Material Widgets',
//    home: UseMaterialWidgets(),
//  )
//);

//void main() => runApp(
//    UseGestures()
//);

//void main() => runApp(
//    StatefulCounter()
//);

//void main() => runApp(
//    StatefulCounterWithCallback()
//);

//void main() => runApp(
//    new MaterialApp(
//      title: 'ShoppingApp',
//      home: ShoppingApp(),
//    )
//);

/// This is a demo project of random word list.
//void main() => runApp(
//  new MaterialApp(
//    title: 'test',
//    home: RandomWords(),
//  )
//);

void main() => runApp(
    new MaterialApp(
      title: 'Planets',
      // This is a demo project of Planets.
      home: PlanetsApp(),
    )
);












// Below is API test
/*void main() => runApp(
    new MaterialApp(
      title: 'API test',
      home: MediaQueryTest(),
    )
);*/





