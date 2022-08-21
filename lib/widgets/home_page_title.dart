import 'package:expense_tracker/providers/expenses_provider.dart';
import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 16),
      child: PoppinsText(
        text: Provider.of<ExpensesProvider>(context, listen: true).isKycComplete
            ? "Your doing\ngreat keep it up.👌"
            : 'Complete your \nKYC Now 😡',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
