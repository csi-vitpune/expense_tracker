import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RobotoText extends StatelessWidget {
  String text;
  double fontSize;
  Color fontColor;
  FontWeight fontWeight;
  FontStyle fontStyle;

  RobotoText(
      {Key? key,
      required this.text,
      this.fontStyle = FontStyle.normal,
      this.fontColor = Colors.black,
      this.fontWeight = FontWeight.w500,
      this.fontSize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor,
          fontStyle: fontStyle),
    );
  }
}
