import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:expense_tracker/widgets/roboto_text.dart';
import 'package:flutter/material.dart';

class ExpenseHighlightWidget extends StatelessWidget {
  Color circleColor;
  String title;
  String amount;
  String asset;

  ExpenseHighlightWidget(
      {Key? key,
      required this.circleColor,
      required this.title,
      required this.amount,
      required this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleColor.withOpacity(0.2)),
                child: Center(
                  child: Image.asset(asset),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              PoppinsText(
                text: title,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
          RobotoText(
            text: amount,
            fontSize: 18,
            fontColor: Color(0xFF2F2F30),
          )
        ],
      ),
    );
  }
}
