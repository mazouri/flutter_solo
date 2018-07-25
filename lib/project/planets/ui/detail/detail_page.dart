import 'package:flutter/material.dart';
import 'package:flutter_solo/common/separator.dart';
import 'package:flutter_solo/common/text_style.dart';
import 'package:flutter_solo/project/planets/model/planet.dart';
import 'package:flutter_solo/project/planets/ui/item/planet_item.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: Stack(
          children: <Widget>[
          _getBackground(),
          _getGradient(),
          _getContent(),
          _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return Container(
      child: new Image.network(
          planet.picture,
          fit: BoxFit.cover,
          height: 300.0,
      ),
      constraints: BoxConstraints.expand(height: 295.0),
    );
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
              new Color(0x00736AB7),
              new Color(0xFF736AB7)
            ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Container _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return Container(
      child: ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          new PlanetItem(planet,
            horizontal: false,
          ),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_overviewTitle,
                  style: Style.headerTextStyle,),
                new Separator(),
                new Text(
                    planet.description, style: Style.commonTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(color: Colors.white,),
    );
  }

}