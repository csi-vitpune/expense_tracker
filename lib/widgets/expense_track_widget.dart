import 'package:expense_tracker/screens/add_transaction.dart';
import 'package:expense_tracker/widgets/add_expense.dart';
import 'package:expense_tracker/widgets/complete_kyc_widget.dart';
import 'package:expense_tracker/widgets/expense_highlight_widget.dart';
import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:expense_tracker/widgets/roboto_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseTrackWidget extends StatelessWidget {
  ExpenseTrackWidget({Key? key}) : super(key: key);

  bool kycCompleted = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 16, right: 16),
      child: Container(
        width: double.infinity,
        height: 511,
        decoration: BoxDecoration(
          color: Color(0xFF303F9F),
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.08),
              spreadRadius: 16,
              blurRadius: 24,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: PoppinsText(
                text: 'Total Spends',
                fontColor: Color(0xFFDFE1F3),
                fontSize: 18,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: RobotoText(
                text: "₹0",
                fontSize: 32,
                fontColor: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, left: 2, right: 2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  RobotoText(
                    text: "₹18,000",
                    fontSize: 12,
                    fontColor: const Color(0xFFADB4E2),
                  ),
                  const Spacer(),
                  PoppinsText(
                    text: 'budget',
                    fontColor: Color(0xFFADB4E2),
                    fontSize: 12,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 144),
                child: PoppinsText(
                  text: "Jan month's data",
                  fontColor: const Color(0xFFADB4E2),
                  fontSize: 12,
                ),
              ),
            ),
            kycCompleted
                ? const AddExpense()
                : const CompleteKycWidget()
          ],
        ),
      ),
    );
  }
}
