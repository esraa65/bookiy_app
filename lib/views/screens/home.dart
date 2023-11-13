import 'package:booklyapp/core/styles.dart';
import 'package:booklyapp/views/component/best_seller/best_seller_list_view.dart';
import 'package:booklyapp/views/component/app_bar/custom_app_bar.dart';
import 'package:booklyapp/views/component/list_view_item/featured_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics:  BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  ListViewBooks(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                    child: Text(
                      'Best Seller',
                      style: Styles.textStyle18,
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: BestSellerListView(),
            )
          ],
        ),
      ),
    );
  }
}
