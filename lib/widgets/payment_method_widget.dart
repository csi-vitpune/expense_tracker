import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class PaymentMethodWidget extends StatelessWidget {
  PaymentMethod method;
  String methodName;
  PaymentMethodWidget({Key? key, required this.method, required this.methodName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Color(0xff303F9F),
            ),
          ),
          child: Center(child: PoppinsText(text: methodName, fontSize: 16,fontColor: Color(0xFF303F9F),),),
        ),
        onTap: (){

        },
      ),
    );
  }
}
