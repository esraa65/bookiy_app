import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/core/utils.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  style: styles.textStyle20,
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}