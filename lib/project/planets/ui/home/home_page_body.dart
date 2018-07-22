import 'package:flutter/material.dart';
import 'package:flutter_solo/project/planets/model/planets.dart';
import 'package:flutter_solo/project/planets/ui/item/planet_item.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverList(delegate: new SliverChildBuilderDelegate(
                  (context, index) => new PlanetItem(planets[index]),
                childCount: planets.length,
              )),
            ),
          ],
        ),
      ),
    );
  }

}