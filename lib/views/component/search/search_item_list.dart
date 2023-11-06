import 'package:booklyapp/views/component/best_seller/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchItemList extends StatelessWidget {
  const SearchItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );();
  }
}
