import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_bar/custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              ' Rudyard Kip',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
