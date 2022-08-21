import 'package:expense_tracker/providers/expenses_provider.dart';
import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:expense_tracker/widgets/roboto_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompleteKycWidget extends StatelessWidget {
  const CompleteKycWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PoppinsText(
                    text: 'Pending KYC',
                    fontColor: const Color(0xFF0c0c0c),
                    fontSize: 18,
                  ),
                  PoppinsText(
                    text:
                        "Lorem Ipsum is simply dummy text \nof the printing and typesetting\nindustry. Lorem",
                    fontColor: const Color(0xFF000000),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: GestureDetector(
                child: Container(
                  width: 146,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE13B30),
                      borderRadius: BorderRadius.circular(84)),
                  child: Center(
                    child: RobotoText(
                      text: "Complete Now",
                      fontSize: 16,
                      fontColor: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                onTap: () {
                  Provider.of<ExpensesProvider>(context, listen: false)
                      .completeKyc();
                },
              ),
            ),
          ),
          Positioned(
            left: 230,
            top: -30,
            child: Container(
              height: 144,
              width: 144,
              decoration: BoxDecoration(
                  color: const Color(0xFFE13B30).withOpacity(0.1),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 24,
            right: 28,
            child: Image.asset(
              'assets/images/key.png',
              scale: 0.9,
            ),
          )
        ],
      ),
    );
  }
}
