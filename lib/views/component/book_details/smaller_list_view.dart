import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class SmallerListView extends StatelessWidget {
  const SmallerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .11,
        child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const  CustomBookImage(imageurl: '',);
          },
        ),
      ),
    );
  }
}
