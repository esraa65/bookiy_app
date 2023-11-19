import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/views/component/book_details/book_button.dart';
import 'package:booklyapp/views/component/book_details/book_rating.dart';
import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:booklyapp/views/component/book_details/similar_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_bar/custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .15),
                child: CustomBookImage(
                    imageurl: bookModel.volumeInfo.imageLinks.thumbnail),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                bookModel.volumeInfo.title!,
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 7.h,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              BookRating(
                rating: bookModel.volumeInfo.averageRating ?? 0,
                count: bookModel.volumeInfo.ratingsCount ?? 0,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 20.h,
              ),
               BookButton(bookModel: bookModel),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Similar Books',
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const SimilarListView()
            ],
          ),
        )
      ],
    );
  }
}
