import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/expenses_provider.dart';

class Helper {
  double getDayInMonth() {
    DateTime now = DateTime.now();
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    return lastDayOfMonth.day.toDouble();
  }

  List<FlSpot> getGraphPoints(BuildContext context) {
    List<FlSpot> graphSpots = [];
    double totalAmount = 0;
    Provider.of<ExpensesProvider>(context, listen: false)
        .getExpenses
        .forEach((spend) {
      int day = spend.date.day;
      totalAmount = totalAmount + spend.amountSpent;
      graphSpots.add(FlSpot(day.toDouble(), totalAmount));
    });
    return graphSpots;
  }
}
