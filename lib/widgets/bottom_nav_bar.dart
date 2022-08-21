import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
      tabBackgroundColor: Color(0xffE8EAF6),
      padding: EdgeInsets.all(8),
      tabMargin: EdgeInsets.all(12),
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          textColor: Color(0xff303F9F),
          iconActiveColor: Color(0xff303F9F),
        ),
        GButton(
            icon: Icons.web_asset,
            text: 'Web',
            textColor: Color(0xff303F9F),
            iconActiveColor: Color(0xff303F9F)),
        GButton(
            icon: Icons.circle_outlined,
            text: 'Part',
            textColor: Color(0xff303F9F),
            iconActiveColor: Color(0xff303F9F)),
        GButton(
            icon: Icons.military_tech_outlined,
            text: 'Ace',
            textColor: Color(0xff303F9F),
            iconActiveColor: Color(0xff303F9F)),
        // GButton(icon: Icons.),
      ],
    );
  }
}
