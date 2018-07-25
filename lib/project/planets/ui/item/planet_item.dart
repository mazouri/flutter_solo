import 'package:flutter/material.dart';
import 'package:flutter_solo/common/text_style.dart';
import 'package:flutter_solo/project/planets/model/planet.dart';
import 'package:flutter_solo/project/planets/ui/detail/detail_page.dart';

class PlanetItem extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetItem(this.planet, {this.horizontal = true});

  PlanetItem.vertical(this.planet) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
          tag: 'planet-hero-${planet.id}',
          child: Image(
              image: new AssetImage(planet.image),
            width: 92.0,
              height: 92.0,
          )),
    );

    Widget planetValue({String value, String image}) {
      return new Container(
        child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(planet.gravity, style: Style.smallTextStyle),
        ]),
      );
    }

    final planetContent = Container(
      constraints: BoxConstraints.expand(),
      margin: EdgeInsets.fromLTRB(horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      child: Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          Text(planet.name),
          new Container(height: 10.0),
          Text(planet.location),
          new Container(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: planetValue(
                    image: 'assets/img/ic_distance.png',
                    value: planet.distance),
                flex: horizontal ? 1 : 0,
              ),
              new Container(
                width: horizontal ? 8.0 : 32.0,
              ),
              Expanded(
                child: planetValue(
                    value: planet.gravity, image: 'assets/img/ic_gravity.png'),
                flex: horizontal ? 1 : 0,
              ),
            ],
          ),
        ],
      ),
    );

    final planetCard = Container(
      child: planetContent,
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );
    return new GestureDetector(
      onTap: horizontal ?  () => Navigator.of(context).push(
        PageRouteBuilder(
            pageBuilder: (_, __, ___) => DetailPage(planet),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            new FadeTransition(opacity: animation, child: child,),
        ),
      ) : null,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail
          ],
        ),
      ),
    );
  }
}
