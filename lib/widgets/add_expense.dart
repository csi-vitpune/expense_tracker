import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:expense_tracker/widgets/roboto_text.dart';
import 'package:flutter/material.dart';

import '../screens/add_transaction.dart';
import 'expense_highlight_widget.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                ExpenseHighlightWidget(
                    circleColor: Color(0xffE19500),
                    title: "Projected Saving",
                    amount: "₹2,000",
                    asset: 'assets/icons/pig.png'),
                SizedBox(
                  height: 9,
                ),
                ExpenseHighlightWidget(
                    circleColor: Color(0xffEB6842),
                    title: "HIghest Spent",
                    amount: "₹2,000",
                    asset: "assets/icons/burger.png")
              ],
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Expanded(
            child: Container(
              height: 183,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PoppinsText(
                      text: "Card balance",
                      fontSize: 12,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        RobotoText(
                          text: "₹1,500",
                          fontSize: 24,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 17,
                          width: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Color(0xFFE13B30).withOpacity(0.26),
                          ),
                          child: Center(
                              child: PoppinsText(
                            text: "Low bal",
                            fontColor: Color(0xFFE13B30),
                            fontSize: 10,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddTransaction()),
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff303F9F)),
                          child: Center(
                            child: PoppinsText(
                              text: 'Add',
                              fontSize: 16,
                              fontColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
