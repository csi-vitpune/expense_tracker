import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

class ExploreWidget extends StatelessWidget {
  String title;
  String asset;
  ExploreWidget({Key? key, required this.title, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffEEEEEE),
                ),
                shape: BoxShape.circle
            ),
            child: Image.asset(asset,scale: 1,),
          ),
          PoppinsText(text: title,fontSize: 12,)
        ],
      ),
    );
  }
}
