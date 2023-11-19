
import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count,
      required this.rating})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: yellow,
        ),
        SizedBox(
          width: 6.3.w,
        ),
         Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          ('$count')  ,
          style: Styles.textStyle14.copyWith(color: gray),
        ),
      ],
    );
  }
}
