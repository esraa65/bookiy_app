import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/views/component/book_details/book_rating.dart';
import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.bookdetailsview, extra: bookModel);
        },
        child: SizedBox(
          height: 125.h,
          child: Row(
            children: [
              CustomBookImage(
                  imageurl: bookModel.volumeInfo.imageLinks.thumbnail),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "free",
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        const Spacer(),
                        BookRating(
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                          rating: bookModel.volumeInfo.ratingsCount ?? 0,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
