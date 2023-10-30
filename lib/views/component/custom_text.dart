import 'package:booklyapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


//used as any text in project
class CustomText extends StatelessWidget {
  final  String text;
  final Color color;
  final  FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;
  final double height;
  final TextDecoration textDecoration;

  const CustomText({
    Key? key,
    required this.text,
    this.color = white,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 16,
    this.textAlign = TextAlign.start,
    this.height = 1.5,
    this.textDecoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        decoration: textDecoration,
        decorationThickness: 1.5,
        fontSize: fontSize.sp,
        color: color,
        fontWeight: fontWeight,
        height: height,
      ),
    );
  }
}