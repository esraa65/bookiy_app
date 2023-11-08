import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/views/component/custom_button.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
       children: [
        Expanded(
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
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              text: 'Free Review',
              textColor: white,fontsize: 16,
              background: pink),
        ),
      ],
    );
  }
}
