import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/views/component/custom_button.dart';
import 'package:booklyapp/views/component/custom_lunch_url.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
              text: "19.99",
              textColor: black,
              background: white),
        ),
        Expanded(
          child: CustomButton(
              onPressed: ()  {
              customLunchUrl(context, bookModel.volumeInfo.previewLink);
              },
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              text: getText(bookModel),
              textColor: white,
              fontSize: 16,
              background: pink),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Free Review';
    }
  }
}
