
import 'package:flutter/material.dart';
import 'package:flutter_solo/project/planets/ui/home/home_app_bar.dart';
import 'package:flutter_solo/project/planets/ui/home/home_page_body.dart';

class PlanetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[

          /// here I use the custom app bar.
          new GradientAppBar(
            title: 'Planets',
          ),
          new HomePageBody(),
        ],
      ),
    );
  }

}