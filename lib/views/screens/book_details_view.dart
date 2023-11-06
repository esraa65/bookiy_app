import 'package:booklyapp/views/component/book_details/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child:  Scaffold(
        body:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
          child: BookDetailsViewBody(),
        ),
      ),
    );
  }
}
