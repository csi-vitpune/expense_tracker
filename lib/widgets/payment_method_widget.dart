import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class PaymentMethodWidget extends StatefulWidget {
  PaymentMethod method;
  String methodName;
  Function setPaymentMethod;

  PaymentMethodWidget(
      {Key? key,
      required this.method,
      required this.methodName,
      required this.setPaymentMethod})
      : super(key: key);

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: _isSelected ? Color(0xff303F9F) : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Color(0xff303F9F),
            ),
          ),
          child: Center(
            child: PoppinsText(
              text: widget.methodName,
              fontSize: 16,
              fontColor: _isSelected ? Colors.white : Color(0xFF303F9F),
            ),
          ),
        ),
        onTap: () {
          widget.setPaymentMethod(widget.method);
          setState(() {
            _isSelected = true;
          });
        },
      ),
    );
  }
}
