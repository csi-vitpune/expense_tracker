import 'package:expense_tracker/widgets/payment_method_widget.dart';
import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  TextEditingController dateController = new TextEditingController();

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
      body: SingleChildScrollView(
        child: Padding(
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
              ),
              SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  labelText: "Amount",
                  labelStyle: TextStyle(color: Color(0xff303F9F)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Color(0xff303F9F),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              PoppinsText(
                text: "Enter Date",
                fontSize: 16,
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: dateController,
                //editing controller of this TextField
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),

                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101));

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);

                    setState(() {
                      dateController.text = formattedDate;
                    });
                  } else {
                    print("Date is not selected");
                  }
                },
              ),
              SizedBox(
                height: 24,
              ),
              PoppinsText(
                text: "Mode of Payment",
                fontSize: 16,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentMethodWidget(
                      method: PaymentMethod.Upi, methodName: "UPI"),
                  SizedBox(
                    width: 50,
                  ),
                  PaymentMethodWidget(
                      method: PaymentMethod.Card, methodName: "Card"),
                  SizedBox(
                    width: 50,
                  ),
                  PaymentMethodWidget(
                      method: PaymentMethod.Cash, methodName: "Cash")
                ],
              ),
              SizedBox(
                height: 24,
              ),
              PoppinsText(
                text: "Quick note",
                fontSize: 16,
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Color(0xff303F9F),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xff303F9F),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: PoppinsText(
                      text: "Save",
                      fontSize: 16,
                      fontColor: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
