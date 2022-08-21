import 'package:expense_tracker/widgets/expense_track_widget.dart';
import 'package:expense_tracker/widgets/explore_section.dart';
import 'package:expense_tracker/widgets/home_page_title.dart';
import 'package:expense_tracker/widgets/home_screen_appbar.dart';
import 'package:expense_tracker/widgets/task_section.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

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
              ExpenseTrackWidget(),
              const ExploreSection(),
              const TaskSection(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
