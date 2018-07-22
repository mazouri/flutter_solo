import 'package:flutter/material.dart';
import 'package:flutter_solo/project/planets/model/planet.dart';

class PlanetItem extends StatelessWidget {
  Planet planet;

  PlanetItem(this.planet);

  @override
  Widget build(BuildContext context) {
//    return Text(planet.name, style: TextStyle(color: Colors.red),);
    return new GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: new Stack(
          children: <Widget>[
            Text('nihaoa'),
          ],
        ),
      ),
    );
  }

}