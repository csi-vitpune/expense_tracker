import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/helper.dart';

class ExpenseGraphWidget extends StatelessWidget {
  const ExpenseGraphWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 122,
      // color: Colors.red,
      child: LineChart(
        LineChartData(
            minX: 1,
            maxX: Helper().getDayInMonth(),
            minY: 0,
            maxY: MONTHLY_BUDGET,
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: false,
              )),
              leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: false,
              )),
            ),
            gridData: FlGridData(show: false),
            lineBarsData: [
              LineChartBarData(
                spots: Helper().getGraphPoints(context),
                isCurved: true,
                color: Color(0xffCCD2FF),
                barWidth: 3,
                curveSmoothness: 0.4,
                dotData: FlDotData(
                  show: false,
                ),
              )
            ]),
      ),
    );
  }
}
