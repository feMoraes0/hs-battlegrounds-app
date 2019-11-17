import "package:flutter/material.dart";
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercent extends StatelessWidget {
  final double size, percent;
  final Color primaryColor;
  final String mainText, labelText;

  CircularPercent({
    @required this.size,
    @required this.percent,
    @required this.primaryColor,
    @required this.mainText,
    @required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: size,
      animation: true,
      animationDuration: 1200,
      lineWidth: 10.0,
      percent: this.percent,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.mainText,
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          Text(
            this.labelText,
            style: TextStyle(
              fontSize: 19.0,
              color: Colors.grey[600],
            ),
          )
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.grey[200],
      progressColor: this.primaryColor,
    );
  }
}
