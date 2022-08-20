import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 32),
      child: PoppinsText(
        text: 'Complete your \nKYC Now 😡',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
