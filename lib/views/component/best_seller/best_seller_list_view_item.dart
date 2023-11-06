import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/core/utils.dart';
import 'package:booklyapp/views/component/book_details/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.bookdetailsview);
        },
        child: SizedBox(
          height: 125.h,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage(AssetsData.testImage),
                          fit: BoxFit.fill)),
                ),
              ),
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
                        'Harry Potter\nand the Goblet of Fire',
                        maxLines: 2,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'J.K. Rowling ',
                      style: Styles.textStyle14,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.9 e',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const BookRating()
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
