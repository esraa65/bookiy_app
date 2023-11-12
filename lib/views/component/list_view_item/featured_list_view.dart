import 'package:booklyapp/view_model/featured_books_cubit/featured_book_cubit.dart';
import 'package:booklyapp/views/component/custom_error_message.dart';
import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBooks extends StatelessWidget {
  const ListViewBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
        builder: (context, state) {
          if (state is FeaturedBookSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  CustomBookImage(imageurl:'',);
                },
              ),
            );
          } else if (state is FeaturedBookFailure) {
            return CustomErrorMessage(errormessage: state.errormessage);
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
        },
      ),
    );
  }
}
