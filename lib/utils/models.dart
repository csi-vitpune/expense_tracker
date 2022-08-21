import 'constant.dart';

class Spend {
  String note;
  double amountSpent;
  DateTime date;
  PaymentMethod paymentMode;

  Spend(
      {required this.note,
      required this.amountSpent,
      required this.date,
      required this.paymentMode});
}
