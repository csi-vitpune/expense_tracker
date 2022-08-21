import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  String title;
  String des;
  Color color;
  String asset;
  String number;

  TaskWidget(
      {Key? key,
      required this.title,
      required this.des,
      required this.color,
      required this.asset,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 152,
        width: 156,
        decoration: BoxDecoration(
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Positioned(
              left: -18,
              top: -27,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            ),
            Positioned(
                left: 12, top: 10, child: Image.asset(asset)),
            Positioned(
              left: 99,
              top: 8,
              child: PoppinsText(
                text: number,
                fontSize: 40,
                fontColor: color,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  PoppinsText(
                    text: title,
                    fontSize: 14,
                  ),
                  PoppinsText(
                    text: des,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
