import 'package:booklyapp/views/component/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child:  CustomListViewItem(),
          );
        },
      ),
    );
  }
}
