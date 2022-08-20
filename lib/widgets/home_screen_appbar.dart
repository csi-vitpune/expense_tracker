import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 16, right: 16, top: 13.5, bottom: 13.5),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFEEEEEE),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              border: Border.all(color: Colors.black.withOpacity(0.3)),
              image: const DecorationImage(
                  image: AssetImage('assets/images/user_profile_photo.png'),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                text: 'Welcome back,',
                fontSize: 12,
                fontColor: const Color(0xff525251),
              ),
              PoppinsText(
                text: 'Waseem Akram',
                fontColor: const Color(0xff2F2F30),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/icons/menu.png',
            scale: 0.8,
          )
        ],
      ),
    );
  }
}
