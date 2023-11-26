import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/views/component/custom_search_text_field.dart';
import 'package:booklyapp/views/component/search/search_item_list.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: CustomSearchTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
          child: Text(
            'Search Seller',
            style: Styles.textStyle18,
          ),
        ),
        Expanded(child: SearchItemList())
      ],
    );
  }
}
