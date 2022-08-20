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
                ? Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 15, right: 15),
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
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          color: Color(0xFFE13B30)
                                              .withOpacity(0.26),
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
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff303F9F)),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {},
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
                  )
                : CompleteKycWidget()
          ],
        ),
      ),
    );
  }
}
