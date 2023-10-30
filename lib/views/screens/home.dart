import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/views/component/best_seller/best_seller_list_view_item.dart';
import 'package:booklyapp/views/component/custom_app_bar.dart';
import 'package:booklyapp/views/component/featured_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              ListViewBooks(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 15),
                child: Text(
                  'Best Seller',
                  style: styles.textStyle18,
                ),
              ),
              BestSellerListViewItem()
            ],
          ),
        ),
      ),
    );
  }
}
