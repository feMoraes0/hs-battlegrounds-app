import 'package:battlegrounds/components/app_bar_custom.dart';
import 'package:battlegrounds/components/chart_custom.dart';
import 'package:fl_chart/fl_chart.dart';
import "package:flutter/material.dart";

class Analytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: AppBarCustom(
                text: "Hero Analytics",
              ),
            ),
            Container(
              width: size.width - 40,
              height: 300,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/heroes/nefarian.png"),
                ),
              ),
            ),
            Container(
              width: size.width,
              child: Text(
                "Nefarian",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey[500],
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(top: 40.0),
              child: ChartCustom(),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.apps),
      ),
    );
  }
}
