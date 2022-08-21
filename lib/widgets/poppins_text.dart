import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsText extends StatelessWidget {
  String text;
  double fontSize;
  Color fontColor;
  FontWeight fontWeight;
  FontStyle fontStyle;
  TextAlign? textAlign;

  PoppinsText(
      {Key? key,
      required this.text,
      this.fontStyle = FontStyle.normal,
      this.fontColor = Colors.black,
      this.fontWeight = FontWeight.w500,
      this.fontSize = 12,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontStyle: fontStyle,
          color: fontColor,
          fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
