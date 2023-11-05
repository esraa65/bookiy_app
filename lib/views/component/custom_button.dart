import 'package:booklyapp/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.borderRadius,
    required this.text,
    required this.textColor,
    required this.background,
    this.fontsize
  });

  final String text;
  final Color background;
  final Color textColor;
  final BorderRadius borderRadius;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 48.h,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: background,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900,fontSize: fontsize),
          )),
    );
  }
}
