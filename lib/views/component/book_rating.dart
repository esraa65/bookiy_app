import 'package:booklyapp/constants/colors.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: yellow,
        ),
         SizedBox(width: 6.3.w,),
        const Text(
          '4,8 ',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5.w,),

         Text(
          '(1279) ',
          style: Styles.textStyle14.copyWith(color: gray),
        ),
      ],
    );
  }
}
