import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/models.dart';

class ExpensesProvider extends ChangeNotifier {
  bool _isKycComplete = false;
  List<Spend> _expenses = [
    Spend(
        note: "base",
        amountSpent: 1,
        date: DateTime.utc(2022, DateTime.august, 1),
        paymentMode: PaymentMethod.Upi),
  ];

  double _totalSpend = 0;

  double get totalSpend => _totalSpend;

  bool get isKycComplete => _isKycComplete;

  List<Spend> get getExpenses => _expenses;

  void completeKyc() {
    _isKycComplete = true;
    notifyListeners();
  }

  void addTransactionSpend(double amountSpend) {
    _totalSpend = _totalSpend + amountSpend;
    notifyListeners();
  }

  void addExpenses(Spend spend) {
    _expenses.add(spend);
    _totalSpend = _totalSpend + spend.amountSpent;
    notifyListeners();
  }
}
