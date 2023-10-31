import 'package:booklyapp/views/component/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomListViewItem();
          },
        ),
      ),
    );
  }
}
