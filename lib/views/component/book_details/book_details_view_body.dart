import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/views/component/book_details/book_button.dart';
import 'package:booklyapp/views/component/book_details/book_rating.dart';
import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:booklyapp/views/component/book_details/smaller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_bar/custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:  Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .15),
                child:  const CustomBookImage(imageurl: ''),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'The Jungle Book',
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Rudyard Kip',
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 30.h,
              ),
              const BookButton(),
              Expanded(
                child: SizedBox(
                  height: 50.h,
                ),
              ),
              Align(alignment: Alignment.centerLeft,
                child: Text(
                  'You Can Also Like',
                  style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 30.h,),
              const  SmallerListView()
            ],
          ) ,
        )
      ],
    );



  }
}
