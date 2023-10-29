import 'package:booklyapp/views/component/best_seller/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 125,
      child: Row(
        children: [
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
