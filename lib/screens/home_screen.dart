import 'package:expense_tracker/widgets/expense_track_widget.dart';
import 'package:expense_tracker/widgets/home_page_title.dart';
import 'package:expense_tracker/widgets/home_screen_appbar.dart';
import 'package:expense_tracker/widgets/poppins_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeScreenAppBar(),
              const HomePageTitle(),
              ExpenseTrackWidget()
            ],
          ),
        ),
      ),
    );
  }
}
