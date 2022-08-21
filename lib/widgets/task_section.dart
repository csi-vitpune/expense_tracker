import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:expense_tracker/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class TaskSection extends StatelessWidget {
  const TaskSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PoppinsText(
            text: 'Tasks',
            fontSize: 18,
          ),
          SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TaskWidget(
                    title: 'Complete KYC',
                    des: 'Create category and\nearn ₹25',
                    color: Color(0xffF6EDD2),
                    asset: 'assets/images/key.png',
                    number: '01'),
                SizedBox(
                  width: 8,
                ),
                TaskWidget(
                    title: 'Create category',
                    des: 'Create category and\nearn ₹25',
                    color: Color(0xffFBE8D8),
                    asset: 'assets/images/real_burger.png',
                    number: '02'),
                SizedBox(
                  width: 8,
                ),
                TaskWidget(
                    title: 'Create category',
                    des: 'Create category and\nearn ₹25',
                    color: Color(0xffFBE8D8),
                    asset: 'assets/images/real_burger.png',
                    number: '02'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
