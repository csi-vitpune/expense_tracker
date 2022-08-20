import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: PoppinsText(
          text: 'Adding Transaction',
          fontSize: 16,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PoppinsText(
              text: "Enter Spend amount",
              fontSize: 16,
            ),
            SizedBox(
              height: 6,
            ),
            PoppinsText(
              text:
                  "Enter the amount that you have spend without using zero balance.",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
