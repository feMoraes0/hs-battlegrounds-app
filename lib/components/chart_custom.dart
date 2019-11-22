import 'package:fl_chart/fl_chart.dart';
import "package:flutter/material.dart";

class ChartCustom extends StatelessWidget {

  BarChartGroupData getBarChart(int x, double y, BuildContext context) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: y,
          color: Theme.of(context).primaryColor,
          width: 20.0
        ),
      ],
      showingTooltipIndicators: [0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 15,
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
                  color: Theme.of(context).primaryColor,
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
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            margin: 5,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '1';
                case 1:
                  return '2';
                case 2:
                  return '3';
                case 3:
                  return '4';
                case 4:
                  return '5';
                case 5:
                  return '6';
                case 6:
                  return '7';
                case 7:
                  return '8';
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
          this.getBarChart(1, 10, context),
          this.getBarChart(2, 14, context),
          this.getBarChart(3, 15, context),
          this.getBarChart(4, 13, context),
          this.getBarChart(5, 10, context),
          this.getBarChart(6, 12, context),
          this.getBarChart(7, 7, context),
          this.getBarChart(8, 2, context),
        ],
      ),
    );
  }
}
