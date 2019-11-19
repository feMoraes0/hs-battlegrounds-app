import 'package:battlegrounds/components/app_bar_custom.dart';
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
                  color: Colors.grey[850],
                ),
              ),
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 30.0),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 20,
                  barTouchData: BarTouchData(
                    enabled: false,
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.transparent,
                      tooltipPadding: const EdgeInsets.all(0),
                      tooltipBottomMargin: 8,
                      getTooltipItem: (
                        BarChartGroupData group,
                        int groupIndex,
                        BarChartRodData rod,
                        int rodIndex,
                      ) {
                        return BarTooltipItem(
                          rod.y.round().toString(),
                          TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      textStyle: TextStyle(
                        color: const Color(0xff7589a2),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      margin: 10,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return '0';
                          case 1:
                            return '1';
                          case 2:
                            return '2';
                          case 3:
                            return '3';
                          case 4:
                            return '4';
                          case 5:
                            return '5';
                          case 6:
                            return '6';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: const SideTitles(showTitles: false),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [
                      BarChartRodData(y: 10, color: Colors.lightBlueAccent)
                    ], showingTooltipIndicators: [
                      0
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(y: 14, color: Colors.lightBlueAccent)
                    ], showingTooltipIndicators: [
                      0
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(
                          y: 15, color: Colors.lightBlueAccent, width: 20.0)
                    ], showingTooltipIndicators: [
                      0
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(y: 13, color: Colors.lightBlueAccent)
                    ], showingTooltipIndicators: [
                      0
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(y: 10, color: Colors.lightBlueAccent)
                    ], showingTooltipIndicators: [
                      0
                    ]),
                  ],
                ),
              ),
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
