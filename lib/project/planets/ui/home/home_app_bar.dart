
import 'package:flutter/material.dart';

/// create a app bar with gradient interface.
class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 66.0;

  /// use named param to set the title of the app bar
  GradientAppBar({this.title});

  @override
  Widget build(BuildContext context) {

    // use MediaQuery to get the status bar height.
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: barHeight + statusBarHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF)
            ],
          // the beginning and ending of gradient.
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode:TileMode.clamp
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            // use the font assets
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 36.0
          ),
        ),
      ),
    );
  }

}