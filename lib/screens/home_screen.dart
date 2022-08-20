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
              HomeScreenAppBar(),
              HomePageTitle(),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 16, right: 16),
                child: Container(
                  width: double.infinity,
                  height: 511,
                  decoration: BoxDecoration(
                    color: Color(0xFF303F9F),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
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
                        padding: EdgeInsets.only(left: 16, top: 24),
                        child: PoppinsText(
                          text: 'Total Spends',
                          fontColor: Color(0xFFDFE1F3),
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 8),
                        child: Text(
                          '₹0',
                          style: GoogleFonts.roboto(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32, left: 2, right: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '₹18,000',
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Color(0xFFADB4E2),
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
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
                          padding: EdgeInsets.only(top: 144),
                          child: PoppinsText(
                            text: "Jan month's data",
                            fontColor: Color(0xFFADB4E2),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 24, left: 16,right: 16),
                        width: double.infinity,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(16)
                        ),
                      )
                    ],
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
